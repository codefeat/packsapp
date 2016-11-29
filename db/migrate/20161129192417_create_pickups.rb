class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :shopper_id
      t.integer :driver_id
      t.string :prod_size
      t.string :user_num

      t.timestamps null: false
    end
  end
end
