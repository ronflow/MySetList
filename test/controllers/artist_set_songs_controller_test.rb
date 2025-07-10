require "test_helper"

class ArtistSetSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_set_song = artist_set_songs(:one)
  end

  test "should get index" do
    get artist_set_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_set_song_url
    assert_response :success
  end

  test "should create artist_set_song" do
    assert_difference("ArtistSetSong.count") do
      post artist_set_songs_url, params: { artist_set_song: { artist_set_id: @artist_set_song.artist_set_id, song_id: @artist_set_song.song_id } }
    end

    assert_redirected_to artist_set_song_url(ArtistSetSong.last)
  end

  test "should show artist_set_song" do
    get artist_set_song_url(@artist_set_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_set_song_url(@artist_set_song)
    assert_response :success
  end

  test "should update artist_set_song" do
    patch artist_set_song_url(@artist_set_song), params: { artist_set_song: { artist_set_id: @artist_set_song.artist_set_id, song_id: @artist_set_song.song_id } }
    assert_redirected_to artist_set_song_url(@artist_set_song)
  end

  test "should destroy artist_set_song" do
    assert_difference("ArtistSetSong.count", -1) do
      delete artist_set_song_url(@artist_set_song)
    end

    assert_redirected_to artist_set_songs_url
  end
end
