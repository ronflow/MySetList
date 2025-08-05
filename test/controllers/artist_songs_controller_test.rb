require "test_helper"

class ArtistSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_song = artist_songs(:one)
  end

  test "should get index" do
    get artist_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_song_url
    assert_response :success
  end

  test "should create artist_song" do
    assert_difference("ArtistSong.count") do
      post artist_songs_url, params: { artist_song: { artist_id: @artist_song.artist_id, letra: @artist_song.letra, song_id: @artist_song.song_id } }
    end

    assert_redirected_to artist_song_url(ArtistSong.last)
  end

  test "should show artist_song" do
    get artist_song_url(@artist_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_song_url(@artist_song)
    assert_response :success
  end

  test "should update artist_song" do
    patch artist_song_url(@artist_song), params: { artist_song: { artist_id: @artist_song.artist_id, letra: @artist_song.letra, song_id: @artist_song.song_id } }
    assert_redirected_to artist_song_url(@artist_song)
  end

  test "should destroy artist_song" do
    assert_difference("ArtistSong.count", -1) do
      delete artist_song_url(@artist_song)
    end

    assert_redirected_to artist_songs_url
  end
end
