class AddMediaFieldsToArtistSongs < ActiveRecord::Migration[8.0]
  def change
    add_column :artist_songs, :duracao, :string
    add_column :artist_songs, :nome_arquivo_video, :text
    add_column :artist_songs, :nome_arquivo_som, :text

    # Índice para melhor performance nas consultas
    add_index :artist_songs, :duracao
  end
end
