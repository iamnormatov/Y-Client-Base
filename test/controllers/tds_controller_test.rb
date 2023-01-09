require "test_helper"

class TdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @td = tds(:one)
  end

  test "should get index" do
    get tds_url
    assert_response :success
  end

  test "should get new" do
    get new_td_url
    assert_response :success
  end

  test "should create td" do
    assert_difference("Td.count") do
      post tds_url, params: { td: { name: @td.name, project_id: @td.project_id } }
    end

    assert_redirected_to td_url(Td.last)
  end

  test "should show td" do
    get td_url(@td)
    assert_response :success
  end

  test "should get edit" do
    get edit_td_url(@td)
    assert_response :success
  end

  test "should update td" do
    patch td_url(@td), params: { td: { name: @td.name, project_id: @td.project_id } }
    assert_redirected_to td_url(@td)
  end

  test "should destroy td" do
    assert_difference("Td.count", -1) do
      delete td_url(@td)
    end

    assert_redirected_to tds_url
  end
end
