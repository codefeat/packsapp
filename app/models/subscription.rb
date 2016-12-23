class Subscription < ActiveRecord::Base
	belongs_to :plan
	belongs_to :user


	validates :plan_id, presence: { message: "Plan can't be blank." }

end