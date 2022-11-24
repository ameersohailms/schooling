json.extract! text_summarizer, :id, :data_input, :data_summarized, :created_at, :updated_at
json.url text_summarizer_url(text_summarizer, format: :json)
