class DropStatusesTable < ActiveRecord::Migration
  def up
  	drop_table :statuses
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
