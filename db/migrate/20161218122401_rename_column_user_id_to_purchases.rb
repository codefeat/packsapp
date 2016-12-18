class RenameColumnUserIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :user_id, :customer_id
  end
end
