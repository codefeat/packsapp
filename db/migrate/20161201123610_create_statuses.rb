class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :order_id
      t.boolean :ready, default: false
      t.boolean :inprocess, default: false
      t.boolean :delivered, default: false

      t.timestamps null: false
    end
  end
end
