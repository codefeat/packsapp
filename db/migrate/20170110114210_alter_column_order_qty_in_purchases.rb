class AlterColumnOrderQtyInPurchases < ActiveRecord::Migration
  def self.up
    change_table :purchases do |t|
      t.change :order_qty, :integer
  end
end
  def self.down
    change_table :purchases do |t|
      t.change :order_qty, :decimal
    end
  end
end
