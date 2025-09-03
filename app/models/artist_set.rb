class ArtistSet < ApplicationRecord
  belongs_to :artist
  has_many :artist_set_songs, dependent: :destroy
  # ✅ USAR artist_songs através de artist_set_songs com artist_song_id
  has_many :artist_songs, through: :artist_set_songs
  
  # Validações
  validates :set_list_name, presence: true
  validates :set_list_name, uniqueness: { scope: :artist_id }
  
  # ✅ SCOPE PARA BUSCA POR TAGS
  scope :with_tags, ->(tags) { 
    where("set_tags ILIKE ?", "%#{tags}%") if tags.present?
  }
  
  # ✅ MÉTODO PARA DUPLICAR SETLIST (usando artist_song_id)
  def duplicate!(new_name = nil)
    # Gera nome único se não fornecido
    new_name ||= generate_unique_name
    
    ActiveRecord::Base.transaction do
      # Cria novo setlist
      duplicated_set = self.class.create!(
        artist: self.artist,
        set_list_name: new_name,
        set_tags: self.set_tags,
        description: self.description
      )
      
      # ✅ COPIA USANDO ARTIST_SONG_ID
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
  
  private
  
  # Gera nome único para duplicação
  def generate_unique_name
    base_name = self.set_list_name
    counter = 2
    new_name = "#{base_name} #{counter}"
    
    # Incrementa contador até encontrar nome disponível
    while self.artist.artist_sets.exists?(set_list_name: new_name)
      counter += 1
      new_name = "#{base_name} #{counter}"
    end
    
    new_name
  end
end