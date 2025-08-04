# app/models/artist_set.rb
class ArtistSet < ApplicationRecord
  belongs_to :artist
  has_many :artist_set_songs, dependent: :destroy
  has_many :artist_songs, through: :artist_set_songs
  has_many :songs, through: :artist_songs
  has_many :event_sets, dependent: :destroy
  has_many :events, through: :event_sets
  
  validates :set_list_name, presence: true
end