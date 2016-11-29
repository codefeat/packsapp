class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :prod_name
      t.string :description
      t.decimal :price
      t.string :image

      t.timestamps null: false
    end
  end
end
