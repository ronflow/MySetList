# app/models/event.rb
class Event < ApplicationRecord
  belongs_to :artist
  
  # Relacionamentos
  has_many :event_sets, dependent: :destroy
  has_many :event_song_queues, dependent: :destroy
  has_many :artist_sets, through: :event_sets
  
  validates :event_date, presence: true
  validates :description, presence: true

  # APENAS ESTES MÉTODOS SIMPLES:
  
  # Método para pegar o primeiro artist_set ativo (se houver)
  def artist_set
    event_sets.joins(:artist_set).where(active: true).first&.artist_set
  end
  
  # Método para pegar todos os artist_sets ativos
  def active_artist_sets
    artist_sets.joins(:event_sets).where(event_sets: { active: true })
  end
  
  # Método simplificado para buscar songs
  def available_songs
    if artist_set.present?
      artist_set.songs.distinct
    else
      artist.songs.distinct
    end
  end

  # Método para criar os event_sets após salvar
  def create_event_sets!
    return unless @pending_artist_set_ids&.any?

    # Limpar sets existentes
    event_sets.destroy_all

    # Criar novos sets
    @pending_artist_set_ids.each_with_index do |set_id, index|
      event_sets.create!(
        artist_set_id: set_id,
        position: index + 1,
        active: true
      )
    end

    @pending_artist_set_ids = nil
  end

  # Método simplificado para buscar songs
  def available_songs
    # Retorna todas as songs do artist
    artist.songs.distinct
  end

  def songs_for_event
    # Primeiro: buscar por event_sets ativos
    active_event_sets = event_sets.where(active: true)
    
    if active_event_sets.any?
      # Se existem event_sets ativos, buscar songs através deles
      Song.joins(artist_set_songs: { artist_set: { event_sets: :event } })
          .where(events: { id: self.id }, event_sets: { active: true })
          .distinct
    else
      # Caso contrário, buscar pelo artist_set padrão do artist
      if artist&.artist_sets&.any?
        artist_set = artist.artist_sets.first
        artist_set.songs
      else
        # Se não há sets, retornar collection vazia
        Song.none
      end
    end
  end
end