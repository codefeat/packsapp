class RemoveColumnOrderPacknumOrderSizeOrderDescriptionAmountOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :order_packnum, :string
  	remove_column :orders, :order_size, :string
  	remove_column :orders, :order_description, :string
  	remove_column :orders, :amount, :decimal
  end
end
