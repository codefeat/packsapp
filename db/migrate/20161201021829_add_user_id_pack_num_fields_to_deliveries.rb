class AddUserIdPackNumFieldsToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :user_id, :integer
    add_column :deliveries, :user_packnum, :string
  end
end
