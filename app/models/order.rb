class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :order_status

	def display_name
		return :prod_name
	end

	def to_param
		uuid
	end
end
