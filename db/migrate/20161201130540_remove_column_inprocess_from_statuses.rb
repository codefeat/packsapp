class RemoveColumnInprocessFromStatuses < ActiveRecord::Migration
  def change
    remove_column :statuses, :inprocess, :boolean
  end
end
