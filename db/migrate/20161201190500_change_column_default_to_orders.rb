class ChangeColumnDefaultToOrders < ActiveRecord::Migration
  def change
  		change_column :orders, :order_statuses_id, :integer, default: '1'
  end
end
