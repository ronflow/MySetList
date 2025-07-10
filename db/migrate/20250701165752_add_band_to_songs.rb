class AddBandToSongs < ActiveRecord::Migration[8.0]
  def change
    add_column :songs, :band, :string
  end
end
