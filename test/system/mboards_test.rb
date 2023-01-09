require "application_system_test_case"

class MboardsTest < ApplicationSystemTestCase
  setup do
    @mboard = mboards(:one)
  end

  test "visiting the index" do
    visit mboards_url
    assert_selector "h1", text: "Mboards"
  end

  test "should create mboard" do
    visit mboards_url
    click_on "New mboard"

    fill_in "Body", with: @mboard.body
    fill_in "Name", with: @mboard.name
    fill_in "Project", with: @mboard.project_id
    click_on "Create Mboard"

    assert_text "Mboard was successfully created"
    click_on "Back"
  end

  test "should update Mboard" do
    visit mboard_url(@mboard)
    click_on "Edit this mboard", match: :first

    fill_in "Body", with: @mboard.body
    fill_in "Name", with: @mboard.name
    fill_in "Project", with: @mboard.project_id
    click_on "Update Mboard"

    assert_text "Mboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Mboard" do
    visit mboard_url(@mboard)
    click_on "Destroy this mboard", match: :first

    assert_text "Mboard was successfully destroyed"
  end
end
