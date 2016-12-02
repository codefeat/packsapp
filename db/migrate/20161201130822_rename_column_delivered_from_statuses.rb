class RenameColumnDeliveredFromStatuses < ActiveRecord::Migration
  def change
  	rename_column :statuses, :delivered, :name
  end
end
