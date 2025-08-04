# db/migrate/20250730145835_add_artist_song_id_to_artist_set_songs.rb
class AddArtistSongIdToArtistSetSongs < ActiveRecord::Migration[7.0]
  def change
    # Adicionar a coluna permitindo NULL inicialmente
    add_reference :artist_set_songs, :artist_song, null: true, foreign_key: true
    
    # Migrar dados existentes (se houver)
    reversible do |dir|
      dir.up do
        # Código para popular os dados - executamos depois
      end
    end
  end
end