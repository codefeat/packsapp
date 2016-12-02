class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_userid
      t.string :order_packnum
      t.string :order_size
      t.text :order_description 
      t.integer :order_qty
      t.decimal :order_cost

      t.timestamps null: false
    end
  end
end
