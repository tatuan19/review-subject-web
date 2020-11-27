json.extract! subject_file, :id, :subject_id, :title, :description, :file_url, :created_at, :updated_at
json.url subject_file_url(subject_file, format: :json)
