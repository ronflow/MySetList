class CreateArtistSets < ActiveRecord::Migration[8.0]
  def change
    create_table :artist_sets do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :set_list_name

      t.timestamps
    end
  end
end
