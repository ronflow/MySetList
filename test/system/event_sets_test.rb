require "application_system_test_case"

class EventSetsTest < ApplicationSystemTestCase
  setup do
    @event_set = event_sets(:one)
  end

  test "visiting the index" do
    visit event_sets_url
    assert_selector "h1", text: "Event sets"
  end

  test "should create event set" do
    visit event_sets_url
    click_on "New event set"

    check "Active" if @event_set.active
    fill_in "Artist set", with: @event_set.artist_set_id
    fill_in "Event", with: @event_set.event_id
    fill_in "Position", with: @event_set.position
    click_on "Create Event set"

    assert_text "Event set was successfully created"
    click_on "Back"
  end

  test "should update Event set" do
    visit event_set_url(@event_set)
    click_on "Edit this event set", match: :first

    check "Active" if @event_set.active
    fill_in "Artist set", with: @event_set.artist_set_id
    fill_in "Event", with: @event_set.event_id
    fill_in "Position", with: @event_set.position
    click_on "Update Event set"

    assert_text "Event set was successfully updated"
    click_on "Back"
  end

  test "should destroy Event set" do
    visit event_set_url(@event_set)
    click_on "Destroy this event set", match: :first

    assert_text "Event set was successfully destroyed"
  end
end
