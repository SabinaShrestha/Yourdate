class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.belongs_to :user
      t.string :title, null:false
      t.string :year_released
      t.integer :length
      t.string :rating
      t.text :actors

      t.timestamps null: false
    end
  end
end
