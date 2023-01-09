require "test_helper"

class XursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xur = xurs(:one)
  end

  test "should get index" do
    get xurs_url
    assert_response :success
  end

  test "should get new" do
    get new_xur_url
    assert_response :success
  end

  test "should create xur" do
    assert_difference("Xur.count") do
      post xurs_url, params: { xur: { project_id: @xur.project_id } }
    end

    assert_redirected_to xur_url(Xur.last)
  end

  test "should show xur" do
    get xur_url(@xur)
    assert_response :success
  end

  test "should get edit" do
    get edit_xur_url(@xur)
    assert_response :success
  end

  test "should update xur" do
    patch xur_url(@xur), params: { xur: { project_id: @xur.project_id } }
    assert_redirected_to xur_url(@xur)
  end

  test "should destroy xur" do
    assert_difference("Xur.count", -1) do
      delete xur_url(@xur)
    end

    assert_redirected_to xurs_url
  end
end
