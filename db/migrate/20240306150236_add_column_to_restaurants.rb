class AddColumnToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :Phone_number, :string
  end
end
