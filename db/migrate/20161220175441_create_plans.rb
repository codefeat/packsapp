class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.text :plan_descrip
      t.text :plan_info
      t.decimal :plan_price
      t.string :plan_image

      t.timestamps null: false
    end
  end
end
