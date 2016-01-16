class CreateScoreBoards < ActiveRecord::Migration
  def change
    create_table :score_boards do |t|
      t.integer :subject_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
