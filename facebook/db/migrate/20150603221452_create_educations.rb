class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :degree
      t.string :training
      t.integer :about_id
      t.timestamps null: false
    end
  end
end
