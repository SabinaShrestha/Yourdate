class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :cars
      t.string :company
      t.timestamps null: false
    end
  end
end
