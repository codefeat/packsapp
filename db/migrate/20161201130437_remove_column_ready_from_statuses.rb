class RemoveColumnReadyFromStatuses < ActiveRecord::Migration
  def change
    remove_column :statuses, :ready, :boolean
  end
end
