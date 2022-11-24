require "application_system_test_case"

class SchoolPartiesTest < ApplicationSystemTestCase
  setup do
    @school_party = school_parties(:one)
  end

  test "visiting the index" do
    visit school_parties_url
    assert_selector "h1", text: "School parties"
  end

  test "should create school party" do
    visit school_parties_url
    click_on "New school party"

    fill_in "Description", with: @school_party.description
    fill_in "Title", with: @school_party.title
    click_on "Create School party"

    assert_text "School party was successfully created"
    click_on "Back"
  end

  test "should update School party" do
    visit school_party_url(@school_party)
    click_on "Edit this school party", match: :first

    fill_in "Description", with: @school_party.description
    fill_in "Title", with: @school_party.title
    click_on "Update School party"

    assert_text "School party was successfully updated"
    click_on "Back"
  end

  test "should destroy School party" do
    visit school_party_url(@school_party)
    click_on "Destroy this school party", match: :first

    assert_text "School party was successfully destroyed"
  end
end
