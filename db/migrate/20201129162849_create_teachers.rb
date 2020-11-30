class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :subjects

      t.timestamps
    end
  end
end
