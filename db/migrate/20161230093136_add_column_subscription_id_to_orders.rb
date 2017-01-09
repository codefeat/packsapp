class AddColumnSubscriptionIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :subcription_id, :integer
  end
end
