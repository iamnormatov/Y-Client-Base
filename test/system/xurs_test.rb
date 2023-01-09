require "application_system_test_case"

class XursTest < ApplicationSystemTestCase
  setup do
    @xur = xurs(:one)
  end

  test "visiting the index" do
    visit xurs_url
    assert_selector "h1", text: "Xurs"
  end

  test "should create xur" do
    visit xurs_url
    click_on "New xur"

    fill_in "Project", with: @xur.project_id
    click_on "Create Xur"

    assert_text "Xur was successfully created"
    click_on "Back"
  end

  test "should update Xur" do
    visit xur_url(@xur)
    click_on "Edit this xur", match: :first

    fill_in "Project", with: @xur.project_id
    click_on "Update Xur"

    assert_text "Xur was successfully updated"
    click_on "Back"
  end

  test "should destroy Xur" do
    visit xur_url(@xur)
    click_on "Destroy this xur", match: :first

    assert_text "Xur was successfully destroyed"
  end
end
