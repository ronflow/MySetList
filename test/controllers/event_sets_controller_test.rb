require "test_helper"

class EventSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_set = event_sets(:one)
  end

  test "should get index" do
    get event_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_event_set_url
    assert_response :success
  end

  test "should create event_set" do
    assert_difference("EventSet.count") do
      post event_sets_url, params: { event_set: { active: @event_set.active, artist_set_id: @event_set.artist_set_id, event_id: @event_set.event_id, position: @event_set.position } }
    end

    assert_redirected_to event_set_url(EventSet.last)
  end

  test "should show event_set" do
    get event_set_url(@event_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_set_url(@event_set)
    assert_response :success
  end

  test "should update event_set" do
    patch event_set_url(@event_set), params: { event_set: { active: @event_set.active, artist_set_id: @event_set.artist_set_id, event_id: @event_set.event_id, position: @event_set.position } }
    assert_redirected_to event_set_url(@event_set)
  end

  test "should destroy event_set" do
    assert_difference("EventSet.count", -1) do
      delete event_set_url(@event_set)
    end

    assert_redirected_to event_sets_url
  end
end
