require "application_system_test_case"

class SkeletonsTest < ApplicationSystemTestCase
  setup do
    @skeleton = skeletons(:one)
  end

  test "visiting the index" do
    visit skeletons_url
    assert_selector "h1", text: "Skeletons"
  end

  test "creating a Skeleton" do
    visit skeletons_url
    click_on "New Skeleton"

    fill_in "Facts", with: @skeleton.facts
    fill_in "Name", with: @skeleton.name
    click_on "Create Skeleton"

    assert_text "Skeleton was successfully created"
    click_on "Back"
  end

  test "updating a Skeleton" do
    visit skeletons_url
    click_on "Edit", match: :first

    fill_in "Facts", with: @skeleton.facts
    fill_in "Name", with: @skeleton.name
    click_on "Update Skeleton"

    assert_text "Skeleton was successfully updated"
    click_on "Back"
  end

  test "destroying a Skeleton" do
    visit skeletons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skeleton was successfully destroyed"
  end
end
