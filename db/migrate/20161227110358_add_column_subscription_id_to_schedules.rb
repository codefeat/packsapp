class AddColumnSubscriptionIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :subscription_id, :integer
  end
end
