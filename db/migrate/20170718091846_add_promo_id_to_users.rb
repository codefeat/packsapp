class AddPromoIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :promo_id, :integer
  end
end
