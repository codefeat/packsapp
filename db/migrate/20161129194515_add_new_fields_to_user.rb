class AddNewFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :image, :string, default: 'default-profile.png'
    add_column :users, :shopper, :boolean, default: true
    add_column :users, :driver, :boolean, default: false
    add_column :users, :role_id, :integer, default: '2'
    add_column :users, :packs_num, :string
  end
end
