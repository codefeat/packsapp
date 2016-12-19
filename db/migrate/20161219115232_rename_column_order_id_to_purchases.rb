class RenameColumnOrderIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :order_id, :delivery_id
  end
end
