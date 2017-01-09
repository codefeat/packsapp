class RemoveColumnSizeAndImageFromDeliveries < ActiveRecord::Migration
  def change
    remove_column :deliveries, :size, :string
    remove_column :deliveries, :image, :string
  end
end
