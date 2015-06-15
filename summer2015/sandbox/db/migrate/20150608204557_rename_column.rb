class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :cars, :cars, :name
  end
end
