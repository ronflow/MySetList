class Song < ApplicationRecord
    has_many :event_song_queues, dependent: :destroy
end