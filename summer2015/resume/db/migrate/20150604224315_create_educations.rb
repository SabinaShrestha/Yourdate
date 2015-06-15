class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string  :school
      t.string :degree
      t.string :institute
      t.string :training
      t.timestamps null: false
    end
  end
end
