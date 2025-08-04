# app/models/artist_song.rb
class ArtistSong < ApplicationRecord
  belongs_to :artist
  belongs_to :song
  has_many :artist_set_songs, dependent: :destroy
  
  # Validação para evitar duplicatas
  validates :artist_id, uniqueness: { scope: :song_id }
  validates :song_id, presence: true
  validates :artist_id, presence: true
end