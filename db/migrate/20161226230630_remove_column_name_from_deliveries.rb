class RemoveColumnNameFromDeliveries < ActiveRecord::Migration
  def change
    remove_column :deliveries, :name, :string
  end
end
