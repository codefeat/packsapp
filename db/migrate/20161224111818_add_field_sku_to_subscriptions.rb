class AddFieldSkuToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :sku, :string
  end
end
