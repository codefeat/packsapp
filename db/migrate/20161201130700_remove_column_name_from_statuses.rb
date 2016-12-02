class RemoveColumnNameFromStatuses < ActiveRecord::Migration
  def change
    remove_column :statuses, :name, :string
  end
end
