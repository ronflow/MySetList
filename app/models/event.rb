class Event < ApplicationRecord
    has_many :event_song_queues, -> { order(:position) }, dependent: :destroy
end
