class CreateArtistUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :artist_users do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :user,   null: false, foreign_key: true
      t.boolean :owner, default: false, null: false
      t.timestamps
    end
    add_index :artist_users, [:artist_id, :user_id], unique: true
  end
end