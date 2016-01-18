class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :group_id
      t.integer :parrent_id

      t.timestamps null: false
    end
  end
end
