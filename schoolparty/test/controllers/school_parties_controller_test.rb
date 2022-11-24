require "test_helper"

class SchoolPartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_party = school_parties(:one)
  end

  test "should get index" do
    get school_parties_url
    assert_response :success
  end

  test "should get new" do
    get new_school_party_url
    assert_response :success
  end

  test "should create school_party" do
    assert_difference("SchoolParty.count") do
      post school_parties_url, params: { school_party: { description: @school_party.description, title: @school_party.title } }
    end

    assert_redirected_to school_party_url(SchoolParty.last)
  end

  test "should show school_party" do
    get school_party_url(@school_party)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_party_url(@school_party)
    assert_response :success
  end

  test "should update school_party" do
    patch school_party_url(@school_party), params: { school_party: { description: @school_party.description, title: @school_party.title } }
    assert_redirected_to school_party_url(@school_party)
  end

  test "should destroy school_party" do
    assert_difference("SchoolParty.count", -1) do
      delete school_party_url(@school_party)
    end

    assert_redirected_to school_parties_url
  end
end
