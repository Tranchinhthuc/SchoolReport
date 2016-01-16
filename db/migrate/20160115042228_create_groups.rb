class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :grade_id
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
