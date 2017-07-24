class ChangePromoCodeToStringInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :promo_code, :string
  end
end
