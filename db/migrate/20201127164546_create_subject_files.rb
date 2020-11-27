class CreateSubjectFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_files do |t|
      t.integer :subject_id
      t.string :title
      t.text :description
      t.string :file_url

      t.timestamps
    end
  end
end
