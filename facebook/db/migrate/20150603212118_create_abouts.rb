class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :address
      t.date :birthday
      t.string :relationship
      t.string :phone
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
