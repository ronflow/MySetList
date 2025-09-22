class RemoveDescriptionFromArtistSets < ActiveRecord::Migration[8.0]
  def change
    remove_column :artist_sets, :Description, :text
  end
end
