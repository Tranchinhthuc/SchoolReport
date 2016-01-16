class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :school_type
      t.text :description

      t.timestamps null: false
    end
  end
end
