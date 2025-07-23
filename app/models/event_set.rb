# app/models/event_set.rb
class EventSet < ApplicationRecord
  belongs_to :event
  belongs_to :artist_set
  
  validates :position, presence: true
  validates :active, inclusion: { in: [true, false] }
  
  scope :active, -> { where(active: true) }
  scope :ordered, -> { order(:position) }
end