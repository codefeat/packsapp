class RenameColumnZipIdToUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :zip_id, :zipcode
  end
end
