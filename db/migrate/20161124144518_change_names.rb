class ChangeNames < ActiveRecord::Migration
  def change
  	rename_column :reviews, :restaurant_id, :delivery_id
  end
end
