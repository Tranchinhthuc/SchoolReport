class CreateScoreBoards < ActiveRecord::Migration
  def change
    create_table :score_boards do |t|
      t.string :name
      t.integer :subject_group_id

      t.timestamps null: false
    end
  end
end
