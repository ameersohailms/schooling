require "test_helper"

class SpSchhools::RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sp_schhools_rating = sp_schhools_ratings(:one)
  end

  test "should get index" do
    get sp_schhools_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_sp_schhools_rating_url
    assert_response :success
  end

  test "should create sp_schhools_rating" do
    assert_difference("SpSchhools::Rating.count") do
      post sp_schhools_ratings_url, params: { sp_schhools_rating: { rate: @sp_schhools_rating.rate, review: @sp_schhools_rating.review, user_id: @sp_schhools_rating.user_id } }
    end

    assert_redirected_to sp_schhools_rating_url(SpSchhools::Rating.last)
  end

  test "should show sp_schhools_rating" do
    get sp_schhools_rating_url(@sp_schhools_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_sp_schhools_rating_url(@sp_schhools_rating)
    assert_response :success
  end

  test "should update sp_schhools_rating" do
    patch sp_schhools_rating_url(@sp_schhools_rating), params: { sp_schhools_rating: { rate: @sp_schhools_rating.rate, review: @sp_schhools_rating.review, user_id: @sp_schhools_rating.user_id } }
    assert_redirected_to sp_schhools_rating_url(@sp_schhools_rating)
  end

  test "should destroy sp_schhools_rating" do
    assert_difference("SpSchhools::Rating.count", -1) do
      delete sp_schhools_rating_url(@sp_schhools_rating)
    end

    assert_redirected_to sp_schhools_ratings_url
  end
end
