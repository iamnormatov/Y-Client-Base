require "application_system_test_case"

class MbsTest < ApplicationSystemTestCase
  setup do
    @mb = mbs(:one)
  end

  test "visiting the index" do
    visit mbs_url
    assert_selector "h1", text: "Mbs"
  end

  test "should create mb" do
    visit mbs_url
    click_on "New mb"

    fill_in "Body", with: @mb.body
    fill_in "Mboard", with: @mb.mboard_id
    click_on "Create Mb"

    assert_text "Mb was successfully created"
    click_on "Back"
  end

  test "should update Mb" do
    visit mb_url(@mb)
    click_on "Edit this mb", match: :first

    fill_in "Body", with: @mb.body
    fill_in "Mboard", with: @mb.mboard_id
    click_on "Update Mb"

    assert_text "Mb was successfully updated"
    click_on "Back"
  end

  test "should destroy Mb" do
    visit mb_url(@mb)
    click_on "Destroy this mb", match: :first

    assert_text "Mb was successfully destroyed"
  end
end
