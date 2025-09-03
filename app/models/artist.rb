# app/models/artist.rb
class Artist < ApplicationRecord
  belongs_to :user

  # Active Storage para logo
  has_one_attached :logo
  has_one_attached :video   # ✅ NOVO: Vídeo do artista
  
  # Relacionamentos com songs
  has_many :artist_songs, dependent: :destroy
  has_many :songs, through: :artist_songs
  
  # Relacionamentos com sets
  has_many :artist_sets, dependent: :destroy
  
  # Relacionamentos com events
  has_many :events, dependent: :destroy

  # Validações
  validates :name, presence: true
  validates :set_list_name, presence: true
  validates :set_list_name, uniqueness: { scope: :artist_id }

  # ✅ SCOPE PARA BUSCA POR TAGS
  scope :with_tags, ->(tags) { 
    where("set_tags ILIKE ?", "%#{tags}%") if tags.present?
  }
  
  # ✅ MÉTODO PARA DUPLICAR SETLIST
  def duplicate!(new_name = nil)
    new_name ||= generate_unique_name
    
    ActiveRecord::Base.transaction do
      duplicated_set = self.class.create!(
        artist: self.artist,
        set_list_name: new_name,
        set_tags: self.set_tags,
        description: self.description
      )
      
      self.artist_set_songs.each do |original_song|
        duplicated_set.artist_set_songs.create!(
          artist_song_id: original_song.artist_song_id
        )
      end
      
      duplicated_set
    end
  end
  
  # ✅ MÉTODO PARA CONTAR MÚSICAS
  def songs_count
    artist_set_songs.count
  end
  
  # ✅ MÉTODO PARA PEGAR MÚSICAS DO SET
  def songs
    Song.joins(:artist_songs)
        .where(artist_songs: { id: artist_set_songs.pluck(:artist_song_id) })
  end
  
  # Campos de redes sociais
  def link1_text
    super.presence || "WhatsApp"
  end
  
  def link2_text
    super.presence || "Instagram"
  end
  
  def social_message
    super.presence || "Acompanhe #{name} nas redes sociais!"
  end
  
  private
  
  def generate_unique_name
    base_name = self.set_list_name
    counter = 2
    new_name = "#{base_name} #{counter}"
    
    while self.artist.artist_sets.exists?(set_list_name: new_name)
      counter += 1
      new_name = "#{base_name} #{counter}"
    end
    
    new_name
  end
end