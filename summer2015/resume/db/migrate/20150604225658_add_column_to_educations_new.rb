class AddColumnToEducationsNew < ActiveRecord::Migration
  def change
    add_column :educations, :degree, :string
    add_column :educations, :institute, :string
    add_column :educations, :training, :string
  end
end
