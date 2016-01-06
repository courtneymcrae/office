class RemoveSquareFromRooms < ActiveRecord::Migration
  def change
    remove_column :rooms, :square, :string
    remove_column :rooms, :feet, :integer
  end
end
