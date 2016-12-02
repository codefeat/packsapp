class AddFieldOrderStatusesIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_statuses_id, :integer
  end
end
