class Plan < ActiveRecord::Base
	mount_uploader :plan_image, ImageUploader

	has_many :subscriptions
end
