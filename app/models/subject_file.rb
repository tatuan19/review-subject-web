class SubjectFile < ApplicationRecord
    belongs_to :subject
    belongs_to :user
end
