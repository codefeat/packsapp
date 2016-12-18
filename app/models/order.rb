class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :order_status

	def display_name
		return :prod_name
	end

	after_create :email_orderer
	def to_param
		uuid
	end

	def email_orderer
		OrderMailer.order_receipt(self).deliver
		
	end
end
