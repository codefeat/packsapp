class RenameColumnScheduleIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :schedule_id, :product_id
  end
end
