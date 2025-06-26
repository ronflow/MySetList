class AddHiddenToEventSongQueues < ActiveRecord::Migration[8.0]
  def change
    add_column :event_song_queues, :hidden, :boolean
  end
end
