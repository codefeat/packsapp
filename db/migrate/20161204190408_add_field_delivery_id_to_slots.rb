class AddFieldDeliveryIdToSlots < ActiveRecord::Migration
  def change
    add_column :slots, :delivery_id, :integer
  end
end
