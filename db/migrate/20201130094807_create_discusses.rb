class CreateDiscusses < ActiveRecord::Migration[6.0]
  def change
    create_table :discusses do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
