class AddColumnWindowToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :window, :string
  end
end
