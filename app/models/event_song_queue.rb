# app/models/event_song_queue.rb
class EventSongQueue < ApplicationRecord
  belongs_to :event
  belongs_to :song
  belongs_to :performer, optional: true  
  
  validates :event_id, presence: true
  validates :position, presence: true
  validates :song_id, presence: true

  # Se quiser acessar o performer, usar method delegate
  def performer_name
    return "Não informado" unless performer_id.present?
    User.find_by(id: performer_id)&.name || "Performer ##{performer_id}"
  end
end