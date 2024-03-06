class RemoveColumnToRestaurantsp < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :Phone_number
  end
end
