class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :day_id
      t.integer :slot_id

      t.timestamps null: false
    end
  end
end
