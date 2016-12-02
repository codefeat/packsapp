class AddUserIdToOrderStatuses < ActiveRecord::Migration
  def change
    add_column :order_statuses, :order_id, :integer
  end
end
