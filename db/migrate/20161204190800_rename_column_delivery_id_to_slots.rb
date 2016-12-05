class RenameColumnDeliveryIdToSlots < ActiveRecord::Migration
  def change
  	rename_column :slots, :delivery_id, :day_id
  end
end
