require "test_helper"

class TextSummarizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_summarizer = text_summarizers(:one)
  end

  test "should get index" do
    get text_summarizers_url
    assert_response :success
  end

  test "should get new" do
    get new_text_summarizer_url
    assert_response :success
  end

  test "should create text_summarizer" do
    assert_difference("TextSummarizer.count") do
      post text_summarizers_url, params: { text_summarizer: { data_input: @text_summarizer.data_input, data_summarized: @text_summarizer.data_summarized } }
    end

    assert_redirected_to text_summarizer_url(TextSummarizer.last)
  end

  test "should show text_summarizer" do
    get text_summarizer_url(@text_summarizer)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_summarizer_url(@text_summarizer)
    assert_response :success
  end

  test "should update text_summarizer" do
    patch text_summarizer_url(@text_summarizer), params: { text_summarizer: { data_input: @text_summarizer.data_input, data_summarized: @text_summarizer.data_summarized } }
    assert_redirected_to text_summarizer_url(@text_summarizer)
  end

  test "should destroy text_summarizer" do
    assert_difference("TextSummarizer.count", -1) do
      delete text_summarizer_url(@text_summarizer)
    end

    assert_redirected_to text_summarizers_url
  end
end
