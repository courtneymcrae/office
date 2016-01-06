class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :address
      t.string :square
      t.integer :feet
      t.integer :price
      t.string :summary

      t.timestamps null: false
    end
  end
end
