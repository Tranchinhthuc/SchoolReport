class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.float :value
      t.integer :score_type
      t.integer :student_score_board_id

      t.timestamps null: false
    end
  end
end
