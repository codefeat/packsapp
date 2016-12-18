class RenameColumnOrderCostToOrder < ActiveRecord::Migration
  def change
  	rename_column :orders, :order_cost, :amount
  end
end
