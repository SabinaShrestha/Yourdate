class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|
      t.string :organization
      t.string :location
      t.integer :years_worked
      t.string :position
      t.integer :about_id
      t.timestamps null: false
    end
  end
end
