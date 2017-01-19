class AddColumnSubscriptionIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :subscription_id, :integer
  end
end
