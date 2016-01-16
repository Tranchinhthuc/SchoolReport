class CreateScoreStudentSubjects < ActiveRecord::Migration
  def change
    create_table :score_student_subjects do |t|
      t.integer :score_id
      t.integer :subject_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
