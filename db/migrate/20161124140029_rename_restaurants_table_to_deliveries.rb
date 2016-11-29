class RenameRestaurantsTableToDeliveries < ActiveRecord::Migration
  def change
  	rename_table :restaurants, :deliveries
  end
end
