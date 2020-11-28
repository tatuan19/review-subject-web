class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.integer :subject_code
      t.string :subject_name
      t.integer :number_of_credits
      t.string :Description

      t.timestamps
    end
  end
end
