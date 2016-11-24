class ChangeNames2 < ActiveRecord::Migration
  def change
  	rename_column :deliveries, :website, :size
  end
end
