class CreateDeliveryPoints < ActiveRecord::Migration
  def change
  	create_table :delivery_points do |t|
      t.string :biz_name
      t.string :biz_street
      t.string :biz_city
      t.string :biz_state
      t.integer :biz_zip

      t.timestamps null: false
    end
  end
end
