class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.integer :gender, null: false
      t.text :bio
      t.integer :contact
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
