# app/models/event.rb
class Event < ApplicationRecord
  belongs_to :artist
  belongs_to :artist_set, optional: true
  
  has_many :event_sets, dependent: :destroy
  has_many :selected_artist_sets, through: :event_sets, source: :artist_set
  
  has_many :event_song_queues, dependent: :destroy
  has_many :songs, through: :event_song_queues

  # APENAS ESTES MÉTODOS SIMPLES:
  
  # Getter para artist_set_ids (IMPORTANTE para edição)
  def artist_set_ids
    event_sets.pluck(:artist_set_id)
  end
  
  # Setter para artist_set_ids (versão simples)
  def artist_set_ids=(ids)
    # Apenas armazenar para usar no controller
    @pending_artist_set_ids = Array(ids).reject(&:blank?).map(&:to_i)
  end

  # Método para obter os IDs pendentes
  def pending_artist_set_ids
    @pending_artist_set_ids || []
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

  def available_songs
    if event_sets.where(active: true).any?
      Song.joins(artist_set_songs: { artist_set: :event_sets })
          .where(event_sets: { event_id: id, active: true })
          .distinct
    elsif artist_set.present?
      artist_set.songs
    else
      Song.all
    end
  end
end