# db/migrate/xxx_make_artist_song_id_not_null_in_artist_set_songs.rb
class MakeArtistSongIdNotNullInArtistSetSongs < ActiveRecord::Migration[7.0]
  def change
    # Remover registros sem artist_song_id
    ArtistSetSong.where(artist_song_id: nil).delete_all
    
    # Tornar a coluna NOT NULL
    change_column_null :artist_set_songs, :artist_song_id, false
    
    # Remover coluna song_id se existir
    if column_exists?(:artist_set_songs, :song_id)
      remove_column :artist_set_songs, :song_id
    end
  end
end