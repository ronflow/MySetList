require "test_helper"

class ArtistSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_set = artist_sets(:one)
  end

  test "should get index" do
    get artist_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_set_url
    assert_response :success
  end

  test "should create artist_set" do
    assert_difference("ArtistSet.count") do
      post artist_sets_url, params: { artist_set: { artist_id: @artist_set.artist_id, set_list_name: @artist_set.set_list_name } }
    end

    assert_redirected_to artist_set_url(ArtistSet.last)
  end

  test "should show artist_set" do
    get artist_set_url(@artist_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_set_url(@artist_set)
    assert_response :success
  end

  test "should update artist_set" do
    patch artist_set_url(@artist_set), params: { artist_set: { artist_id: @artist_set.artist_id, set_list_name: @artist_set.set_list_name } }
    assert_redirected_to artist_set_url(@artist_set)
  end

  test "should destroy artist_set" do
    assert_difference("ArtistSet.count", -1) do
      delete artist_set_url(@artist_set)
    end

    assert_redirected_to artist_sets_url
  end
end
