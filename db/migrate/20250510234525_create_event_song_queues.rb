class CreateEventSongQueues < ActiveRecord::Migration[8.0]
  def change
    create_table :event_song_queues do |t|
      t.references :event, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.references :performer, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
