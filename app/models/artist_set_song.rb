# app/models/artist_set_song.rb
class ArtistSetSong < ApplicationRecord
  belongs_to :artist_set
  belongs_to :artist_song
  
  # Delegação para acessar song através de artist_song
  delegate :song, to: :artist_song
  delegate :name, to: :song, prefix: true
  delegate :band, to: :song, prefix: true
  
  validates :artist_set_id, uniqueness: { scope: :artist_song_id }
end