class CreateChocolates < ActiveRecord::Migration
  def change
    create_table :chocolates do |t|
      t.string :chocolate_name
      t.string :variety
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
