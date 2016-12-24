class AddFieldSkuToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :sku, :string
  end
end
