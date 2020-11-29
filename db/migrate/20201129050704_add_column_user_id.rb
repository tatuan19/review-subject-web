class AddColumnUserId < ActiveRecord::Migration[6.0]
  def change
    add_column :subject_files, :user_id, :integer
  end
end
