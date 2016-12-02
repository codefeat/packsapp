class RenameOrderUseridToUserId < ActiveRecord::Migration
  def change
  	rename_column :orders, :order_userid, :user_id
  end
end
