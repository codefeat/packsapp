class Schedule < ActiveRecord::Base
	belongs_to :slot
	has_many :deliveries
	
	#accepts_nested_attributes_for :slot
	#attr_accessible :window

	validates :day, presence: {message: "Delivery day can't be blank"}
	validates :slot_id, presence: {message: "Delivery window can't be blank." }
end
