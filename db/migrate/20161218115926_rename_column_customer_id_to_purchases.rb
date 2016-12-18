class RenameColumnCustomerIdToPurchases < ActiveRecord::Migration
  def change
  	rename_column :purchases, :customer_id, :user_id
  end
end
