class RenameColumnOrderStatuseIdToOrder < ActiveRecord::Migration
  def change
  	rename_column :orders, :order_statuses_id, :order_status_id
  end
end
