require "application_system_test_case"

class SkeletonsTest < ApplicationSystemTestCase
  setup do
    @skeleton = skeletons(:one)
  end

  test "visiting the index" do
    visit skeletons_url
    assert_selector "h1", text: "Skeletons"
  end

  test "should create skeleton" do
    visit skeletons_url
    click_on "New skeleton"

    fill_in "Facts", with: @skeleton.facts
    fill_in "Name", with: @skeleton.name
    click_on "Create Skeleton"

    assert_text "Skeleton was successfully created"
    click_on "Back"
  end

  test "should update Skeleton" do
    visit skeleton_url(@skeleton)
    click_on "Edit this skeleton", match: :first

    fill_in "Facts", with: @skeleton.facts
    fill_in "Name", with: @skeleton.name
    click_on "Update Skeleton"

    assert_text "Skeleton was successfully updated"
    click_on "Back"
  end

  test "should destroy Skeleton" do
    visit skeleton_url(@skeleton)
    click_on "Destroy this skeleton", match: :first

    assert_text "Skeleton was successfully destroyed"
  end
end
