class AddRestuarantToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :restaurant, :string
  end
end
