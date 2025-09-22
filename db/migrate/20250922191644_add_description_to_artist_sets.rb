class AddDescriptionToArtistSets < ActiveRecord::Migration[8.0]
  def change
    add_column :artist_sets, :description, :text
  end
end
