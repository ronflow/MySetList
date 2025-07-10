require "application_system_test_case"

class ArtistSetsTest < ApplicationSystemTestCase
  setup do
    @artist_set = artist_sets(:one)
  end

  test "visiting the index" do
    visit artist_sets_url
    assert_selector "h1", text: "Artist sets"
  end

  test "should create artist set" do
    visit artist_sets_url
    click_on "New artist set"

    fill_in "Artist", with: @artist_set.artist_id
    fill_in "Set list name", with: @artist_set.set_list_name
    click_on "Create Artist set"

    assert_text "Artist set was successfully created"
    click_on "Back"
  end

  test "should update Artist set" do
    visit artist_set_url(@artist_set)
    click_on "Edit this artist set", match: :first

    fill_in "Artist", with: @artist_set.artist_id
    fill_in "Set list name", with: @artist_set.set_list_name
    click_on "Update Artist set"

    assert_text "Artist set was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist set" do
    visit artist_set_url(@artist_set)
    click_on "Destroy this artist set", match: :first

    assert_text "Artist set was successfully destroyed"
  end
end
