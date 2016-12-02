class AlterColumnStatusesName < ActiveRecord::Migration
  def self.up
  	change_table :statuses do |t|
  		t.change :name, :string
    end
  end
  def self.down
	change_table :statuses do |t|
		t.change :name, :boolean
		end
	end
end
