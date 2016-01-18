class CreateStudentSubjectGroups < ActiveRecord::Migration
  def change
    create_table :student_subject_groups do |t|
      t.integer :student_id
      t.integer :subject_group_id
      t.integer :score_board_id

      t.timestamps null: false
    end
  end
end
