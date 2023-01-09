require "test_helper"

class MboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mboard = mboards(:one)
  end

  test "should get index" do
    get mboards_url
    assert_response :success
  end

  test "should get new" do
    get new_mboard_url
    assert_response :success
  end

  test "should create mboard" do
    assert_difference("Mboard.count") do
      post mboards_url, params: { mboard: { body: @mboard.body, name: @mboard.name, project_id: @mboard.project_id } }
    end

    assert_redirected_to mboard_url(Mboard.last)
  end

  test "should show mboard" do
    get mboard_url(@mboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_mboard_url(@mboard)
    assert_response :success
  end

  test "should update mboard" do
    patch mboard_url(@mboard), params: { mboard: { body: @mboard.body, name: @mboard.name, project_id: @mboard.project_id } }
    assert_redirected_to mboard_url(@mboard)
  end

  test "should destroy mboard" do
    assert_difference("Mboard.count", -1) do
      delete mboard_url(@mboard)
    end

    assert_redirected_to mboards_url
  end
end
