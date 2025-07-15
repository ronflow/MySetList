class Event < ApplicationRecord
    belongs_to :artist
    has_many :event_song_queues, -> { order(:position) }, dependent: :destroy
end
