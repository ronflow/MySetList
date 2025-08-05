class CreateArtistSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_songs do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.text :letra

      t.timestamps
    end
    
    # Índice para evitar duplicatas
    add_index :artist_songs, [:artist_id, :song_id], unique: true
  end
end
