class Delivery < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :reviews

	validates :name, :address, :phone, :size, :image, presence: true
	validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
	 message: "must be in the format (123) 456-7890" }
	 validates :address, format: { with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
	 message: "must be in the format 350 Fifth Avenue, New Yourk, NY 10118"}
end
