class CreateArtistSets < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_sets do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :set_list_name, null: false  # ✅ VERIFICAR se esta coluna existe
      t.text :description
      t.string :set_tags
      t.timestamps
    end
    
    add_index :artist_sets, [:artist_id, :set_list_name], unique: true
  end
end
