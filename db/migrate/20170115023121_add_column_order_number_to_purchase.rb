class AddColumnOrderNumberToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :order_num, :integer
  end
end
