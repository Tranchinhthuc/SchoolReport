class CreateTeacherScoreBoards < ActiveRecord::Migration
  def change
    create_table :teacher_score_boards do |t|
      t.integer :teacher_id
      t.integer :score_board_id

      t.timestamps null: false
    end
  end
end
