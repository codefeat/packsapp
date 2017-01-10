class AddColumnOrderQtyToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :order_qty, :decimal
  end
end
