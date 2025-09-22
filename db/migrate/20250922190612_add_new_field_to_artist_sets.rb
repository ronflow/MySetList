class AddNewFieldToArtistSets < ActiveRecord::Migration[8.0]
  def change
    add_column :artist_sets, :Description, :text
  end
end
