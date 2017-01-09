class AddColumnOrderQtyToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :order_qty, :decimal
  end
end
