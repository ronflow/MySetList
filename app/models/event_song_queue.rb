class EventSongQueue < ApplicationRecord
  belongs_to :event
  belongs_to :song
  belongs_to :performer
  default_scope { order(:position) }
end
