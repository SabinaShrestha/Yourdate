class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :bio
      t.integer :age
      t.integer :gender, default: 1
      t.integer :contact
      t.timestamps null: false
    end
  end
end
