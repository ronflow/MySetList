class AddLinksToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :link1, :string
    add_column :artists, :link2, :string
  end
end
