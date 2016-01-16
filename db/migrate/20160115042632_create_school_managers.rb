class CreateSchoolManagers < ActiveRecord::Migration
  def change
    create_table :school_managers do |t|
      t.string :name
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
