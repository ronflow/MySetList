class AddMbidAndIsrcToSongs < ActiveRecord::Migration[8.0]
  def change
    add_column :songs, :mbid, :string
    add_column :songs, :isrc, :string

    # Adicionar índices para melhor performance
    add_index :songs, :mbid
    add_index :songs, :isrc
  end
end
