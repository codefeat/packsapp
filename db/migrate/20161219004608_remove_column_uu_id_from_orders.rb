class RemoveColumnUuIdFromOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :uuid
  end
end
