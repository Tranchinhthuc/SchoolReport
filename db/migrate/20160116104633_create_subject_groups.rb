class CreateSubjectGroups < ActiveRecord::Migration
  def change
    create_table :subject_groups do |t|
      t.integer :subject_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
