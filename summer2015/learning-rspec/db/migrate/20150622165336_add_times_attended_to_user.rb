class AddTimesAttendedToUser < ActiveRecord::Migration
  def change
    add_column :users, :times_attended, :integer, default:0
  end
end
