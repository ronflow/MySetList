class Song < ApplicationRecord
  belongs_to :artist
  has_many :artist_set_songs, dependent: :destroy
  has_many :artist_sets, through: :artist_set_songs
end