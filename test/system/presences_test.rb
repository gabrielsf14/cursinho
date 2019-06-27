require "application_system_test_case"

class PresencesTest < ApplicationSystemTestCase
  setup do
    @presence = presences(:one)
  end

  test "visiting the index" do
    visit presences_url
    assert_selector "h1", text: "Presences"
  end

  test "creating a Presence" do
    visit presences_url
    click_on "New Presence"

    fill_in "Date", with: @presence.date
    check "Is present" if @presence.is_present
    fill_in "Student", with: @presence.student_id
    click_on "Create Presence"

    assert_text "Presence was successfully created"
    click_on "Back"
  end

  test "updating a Presence" do
    visit presences_url
    click_on "Edit", match: :first

    fill_in "Date", with: @presence.date
    check "Is present" if @presence.is_present
    fill_in "Student", with: @presence.student_id
    click_on "Update Presence"

    assert_text "Presence was successfully updated"
    click_on "Back"
  end

  test "destroying a Presence" do
    visit presences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presence was successfully destroyed"
  end
end
