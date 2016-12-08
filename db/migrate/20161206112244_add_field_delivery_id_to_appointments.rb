class AddFieldDeliveryIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :delivery_id, :integer
  end
end
