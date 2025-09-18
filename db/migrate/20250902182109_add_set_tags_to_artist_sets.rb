class AddSetTagsToArtistSets < ActiveRecord::Migration[8.0]
  def change
    add_column :artist_sets, :set_tags, :text
    add_index :artist_sets, :set_tags
  end
end
