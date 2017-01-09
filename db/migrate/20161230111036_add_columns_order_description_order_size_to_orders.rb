class AddColumnsOrderDescriptionOrderSizeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_description, :text
    add_column :orders, :order_size, :string
  end
end
