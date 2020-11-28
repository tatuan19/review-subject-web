json.extract! subject, :id, :subject_code, :subject_name, :number_of_credits, :Description, :created_at, :updated_at
json.url subject_url(subject, format: :json)
