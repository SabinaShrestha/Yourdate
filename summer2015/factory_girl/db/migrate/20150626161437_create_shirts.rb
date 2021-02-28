class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :size
      t.string :color
      t.text :pattern
      t.boolean :sold_out,default:false
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
