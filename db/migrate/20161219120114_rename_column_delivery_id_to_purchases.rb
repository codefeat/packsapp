class RenameColumnDeliveryIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :delivery_id, :schedule_id
  end
end
