class CreateStudentScoreBoards < ActiveRecord::Migration
  def change
    create_table :student_score_boards do |t|
      t.integer :student_id
      t.integer :score_board_id

      t.timestamps null: false
    end
  end
end
