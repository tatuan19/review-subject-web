class Subject < ApplicationRecord
    has_many :subject_review, -> { order "created_at DESC"}
end
