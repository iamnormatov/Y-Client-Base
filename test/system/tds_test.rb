require "application_system_test_case"

class TdsTest < ApplicationSystemTestCase
  setup do
    @td = tds(:one)
  end

  test "visiting the index" do
    visit tds_url
    assert_selector "h1", text: "Tds"
  end

  test "should create td" do
    visit tds_url
    click_on "New td"

    fill_in "Name", with: @td.name
    fill_in "Project", with: @td.project_id
    click_on "Create Td"

    assert_text "Td was successfully created"
    click_on "Back"
  end

  test "should update Td" do
    visit td_url(@td)
    click_on "Edit this td", match: :first

    fill_in "Name", with: @td.name
    fill_in "Project", with: @td.project_id
    click_on "Update Td"

    assert_text "Td was successfully updated"
    click_on "Back"
  end

  test "should destroy Td" do
    visit td_url(@td)
    click_on "Destroy this td", match: :first

    assert_text "Td was successfully destroyed"
  end
end
