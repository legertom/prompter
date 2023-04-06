json.extract! prompt, :id, :title, :prompt_text, :description, :created_at, :updated_at
json.url prompt_url(prompt, format: :json)
