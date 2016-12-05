class AddFieldDeliveryIdToDays < ActiveRecord::Migration
  def change
    add_column :days, :delivery_id, :integer
  end
end
