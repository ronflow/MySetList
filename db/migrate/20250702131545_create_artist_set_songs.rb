class CreateArtistSetSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :artist_set_songs do |t|
      t.references :artist_set, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
