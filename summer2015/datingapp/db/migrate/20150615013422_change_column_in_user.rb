class ChangeColumnInUser < ActiveRecord::Migration
  def change
    change_column :users, :gender, :integer, default: 1, null: true
  end
end
