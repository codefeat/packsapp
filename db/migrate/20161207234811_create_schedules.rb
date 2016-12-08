class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :day
      t.integer :slot_id
      t.integer :delivery_id

      t.timestamps null: false
    end
  end
end
