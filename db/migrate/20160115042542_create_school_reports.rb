class CreateSchoolReports < ActiveRecord::Migration
  def change
    create_table :school_reports do |t|
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
