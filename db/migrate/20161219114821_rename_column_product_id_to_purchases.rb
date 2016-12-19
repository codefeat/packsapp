class RenameColumnProductIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :product_id, :order_id
  end
end
