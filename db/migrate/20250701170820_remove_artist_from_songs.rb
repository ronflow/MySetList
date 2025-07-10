class RemoveArtistFromSongs < ActiveRecord::Migration[8.0]
  def change
    remove_column :songs, :artist, :string
  end
end
