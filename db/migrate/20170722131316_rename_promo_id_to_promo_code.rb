class RenamePromoIdToPromoCode < ActiveRecord::Migration
  def change
  	rename_column :users, :promo_id, :promo_code
  end
end
