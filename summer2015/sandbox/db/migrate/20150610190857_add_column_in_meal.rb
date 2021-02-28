class AddColumnInMeal < ActiveRecord::Migration
  def change
    add_column :meals, :restuarant, :string
  end
end
