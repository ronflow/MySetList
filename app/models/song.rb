# app/models/song.rb
class Song < ApplicationRecord
  # Relacionamentos com artists
  has_many :artist_songs, dependent: :destroy
  has_many :artists, through: :artist_songs
  
  # Relacionamentos com artist_set_songs
  has_many :artist_set_songs, dependent: :destroy
  has_many :artist_sets, through: :artist_set_songs
  
  # Relacionamentos com event_song_queue
  has_many :event_song_queues, dependent: :destroy
  has_many :events, through: :event_song_queues
  
  # Validações para MBID e ISRC
  validates :mbid, format: { 
    with: /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/i,
    message: "deve ser um UUID válido"
  }, allow_blank: true
  
  validates :isrc, format: { 
    with: /\A[A-Z]{2}[A-Z0-9]{3}[0-9]{7}\z/,
    message: "deve ter formato válido (ex: USUM71703861)"
  }, allow_blank: true

  # Método para obter a letra da música para um artista específico
  def letra_for_artist(artist)
    artist_song = artist.artist_songs.find_by(song: self)
    artist_song&.letra || self.original_lyrics || "Letra não disponível"
  end
end