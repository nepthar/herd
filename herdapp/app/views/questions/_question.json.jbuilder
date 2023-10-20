json.extract! question, :id, :title, :question, :created_by, :created_at, :updated_at
json.url question_url(question, format: :json)
