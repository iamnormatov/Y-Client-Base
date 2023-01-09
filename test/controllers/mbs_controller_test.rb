require "test_helper"

class MbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mb = mbs(:one)
  end

  test "should get index" do
    get mbs_url
    assert_response :success
  end

  test "should get new" do
    get new_mb_url
    assert_response :success
  end

  test "should create mb" do
    assert_difference("Mb.count") do
      post mbs_url, params: { mb: { body: @mb.body, mboard_id: @mb.mboard_id } }
    end

    assert_redirected_to mb_url(Mb.last)
  end

  test "should show mb" do
    get mb_url(@mb)
    assert_response :success
  end

  test "should get edit" do
    get edit_mb_url(@mb)
    assert_response :success
  end

  test "should update mb" do
    patch mb_url(@mb), params: { mb: { body: @mb.body, mboard_id: @mb.mboard_id } }
    assert_redirected_to mb_url(@mb)
  end

  test "should destroy mb" do
    assert_difference("Mb.count", -1) do
      delete mb_url(@mb)
    end

    assert_redirected_to mbs_url
  end
end
