require "application_system_test_case"

class ArtistSetSongsTest < ApplicationSystemTestCase
  setup do
    @artist_set_song = artist_set_songs(:one)
  end

  test "visiting the index" do
    visit artist_set_songs_url
    assert_selector "h1", text: "Artist set songs"
  end

  test "should create artist set song" do
    visit artist_set_songs_url
    click_on "New artist set song"

    fill_in "Artist set", with: @artist_set_song.artist_set_id
    fill_in "Song", with: @artist_set_song.song_id
    click_on "Create Artist set song"

    assert_text "Artist set song was successfully created"
    click_on "Back"
  end

  test "should update Artist set song" do
    visit artist_set_song_url(@artist_set_song)
    click_on "Edit this artist set song", match: :first

    fill_in "Artist set", with: @artist_set_song.artist_set_id
    fill_in "Song", with: @artist_set_song.song_id
    click_on "Update Artist set song"

    assert_text "Artist set song was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist set song" do
    visit artist_set_song_url(@artist_set_song)
    click_on "Destroy this artist set song", match: :first

    assert_text "Artist set song was successfully destroyed"
  end
end
