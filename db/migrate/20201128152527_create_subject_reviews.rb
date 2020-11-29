class CreateSubjectReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_reviews do |t|
      t.integer :user_id
      t.text :subject_id
      t.text :review

      t.timestamps
    end
  end
end
