class Schedule < ActiveRecord::Base
	belongs_to :slot
	has_many :deliveries
	
	#accepts_nested_attributes_for :slot
	#attr_accessible :window
end
