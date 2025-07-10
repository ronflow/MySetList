class ArtistSetSong < ApplicationRecord
  belongs_to :artist_set
  belongs_to :song
end
