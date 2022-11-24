require "application_system_test_case"

class TextSummarizersTest < ApplicationSystemTestCase
  setup do
    @text_summarizer = text_summarizers(:one)
  end

  test "visiting the index" do
    visit text_summarizers_url
    assert_selector "h1", text: "Text summarizers"
  end

  test "should create text summarizer" do
    visit text_summarizers_url
    click_on "New text summarizer"

    fill_in "Data input", with: @text_summarizer.data_input
    fill_in "Data summarized", with: @text_summarizer.data_summarized
    click_on "Create Text summarizer"

    assert_text "Text summarizer was successfully created"
    click_on "Back"
  end

  test "should update Text summarizer" do
    visit text_summarizer_url(@text_summarizer)
    click_on "Edit this text summarizer", match: :first

    fill_in "Data input", with: @text_summarizer.data_input
    fill_in "Data summarized", with: @text_summarizer.data_summarized
    click_on "Update Text summarizer"

    assert_text "Text summarizer was successfully updated"
    click_on "Back"
  end

  test "should destroy Text summarizer" do
    visit text_summarizer_url(@text_summarizer)
    click_on "Destroy this text summarizer", match: :first

    assert_text "Text summarizer was successfully destroyed"
  end
end
