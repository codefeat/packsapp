class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :order_status
	#belongs_to :purchase

	def display_name
		return :prod_name
	end
end
