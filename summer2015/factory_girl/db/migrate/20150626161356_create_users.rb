class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name,null:false
      t.string :last_name,null:false
      t.string :gender
      t.integer :age
      t.text :bio
      t.timestamps null: false
    end
  end
end
