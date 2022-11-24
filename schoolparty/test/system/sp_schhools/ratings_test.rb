require "application_system_test_case"

class SpSchhools::RatingsTest < ApplicationSystemTestCase
  setup do
    @sp_schhools_rating = sp_schhools_ratings(:one)
  end

  test "visiting the index" do
    visit sp_schhools_ratings_url
    assert_selector "h1", text: "Ratings"
  end

  test "should create rating" do
    visit sp_schhools_ratings_url
    click_on "New rating"

    fill_in "Rate", with: @sp_schhools_rating.rate
    fill_in "Review", with: @sp_schhools_rating.review
    fill_in "User", with: @sp_schhools_rating.user_id
    click_on "Create Rating"

    assert_text "Rating was successfully created"
    click_on "Back"
  end

  test "should update Rating" do
    visit sp_schhools_rating_url(@sp_schhools_rating)
    click_on "Edit this rating", match: :first

    fill_in "Rate", with: @sp_schhools_rating.rate
    fill_in "Review", with: @sp_schhools_rating.review
    fill_in "User", with: @sp_schhools_rating.user_id
    click_on "Update Rating"

    assert_text "Rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Rating" do
    visit sp_schhools_rating_url(@sp_schhools_rating)
    click_on "Destroy this rating", match: :first

    assert_text "Rating was successfully destroyed"
  end
end
