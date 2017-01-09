class Schedule < ActiveRecord::Base
#after_create :process_payment


	belongs_to :slot
	has_many :deliveries

	belongs_to :subscription
	
	#accepts_nested_attributes_for :slot
	#attr_accessible :window

	validates :day, presence: {message: "Delivery day can't be blank"}
	validates :slot_id, presence: {message: "Delivery window can't be blank." }
end
