class Artist < ApplicationRecord
    belongs_to :user
    has_many :artist_sets, dependent: :destroy
    has_one_attached :logo
end
