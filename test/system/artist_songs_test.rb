require "application_system_test_case"

class ArtistSongsTest < ApplicationSystemTestCase
  setup do
    @artist_song = artist_songs(:one)
  end

  test "visiting the index" do
    visit artist_songs_url
    assert_selector "h1", text: "Artist songs"
  end

  test "should create artist song" do
    visit artist_songs_url
    click_on "New artist song"

    fill_in "Artist", with: @artist_song.artist_id
    fill_in "Letra", with: @artist_song.letra
    fill_in "Song", with: @artist_song.song_id
    click_on "Create Artist song"

    assert_text "Artist song was successfully created"
    click_on "Back"
  end

  test "should update Artist song" do
    visit artist_song_url(@artist_song)
    click_on "Edit this artist song", match: :first

    fill_in "Artist", with: @artist_song.artist_id
    fill_in "Letra", with: @artist_song.letra
    fill_in "Song", with: @artist_song.song_id
    click_on "Update Artist song"

    assert_text "Artist song was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist song" do
    visit artist_song_url(@artist_song)
    click_on "Destroy this artist song", match: :first

    assert_text "Artist song was successfully destroyed"
  end
end
