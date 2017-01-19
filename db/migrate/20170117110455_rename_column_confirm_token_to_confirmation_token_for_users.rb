class RenameColumnConfirmTokenToConfirmationTokenForUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :confirm_token, :confirmation_token
  end
end
