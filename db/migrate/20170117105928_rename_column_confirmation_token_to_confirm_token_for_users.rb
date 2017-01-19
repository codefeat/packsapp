class RenameColumnConfirmationTokenToConfirmTokenForUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :confirmation_token, :confirm_token
  end
end
