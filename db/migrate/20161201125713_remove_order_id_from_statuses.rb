class RemoveOrderIdFromStatuses < ActiveRecord::Migration
  def change
    remove_column :statuses, :order_id, :integer
  end
end
