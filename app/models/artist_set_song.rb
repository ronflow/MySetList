class ArtistSetSong < ApplicationRecord
  belongs_to :artist_set
  # ✅ USAR ARTIST_SONG_ID EM VEZ DE SONG_ID
  belongs_to :artist_song
  
  # ✅ DELEGAÇÃO PARA ACESSAR SONG
  delegate :song, to: :artist_song, allow_nil: true
  delegate :name, to: :song, prefix: true, allow_nil: true
  delegate :band, to: :song, prefix: true, allow_nil: true
  
  validates :artist_set_id, presence: true
  validates :artist_song_id, presence: true
  validates :artist_song_id, uniqueness: { scope: :artist_set_id }
end