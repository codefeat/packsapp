class Plan < ActiveRecord::Base
	mount_uploader :plan_image, ImageUploader

	has_many :subscriptions
	has_many :users

	has_many :purchases
     
    def price_in_cents
     	(self.plan_price * 100).to_i
    end
end
