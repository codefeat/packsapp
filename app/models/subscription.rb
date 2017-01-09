class Subscription < ActiveRecord::Base
	belongs_to :plan
	belongs_to :user
	belongs_to :order


	has_many :schedule
	#has_many :orders

	validates :plan_id, presence: { message: "Plan can't be blank." }

end