class AddColumnToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :school, :string
  end
end
