class AddFieldUuIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :uuid, :string
  end
end
