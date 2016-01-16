class CreateParrents < ActiveRecord::Migration
  def change
    create_table :parrents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
