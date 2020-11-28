json.extract! subject_review, :id, :user_id, :subject_id, :review, :created_at, :updated_at
json.url subject_review_url(subject_review, format: :json)
