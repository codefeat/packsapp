class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :order_status
	#belongs_to :subscription
	#belongs_to :purchase
	has_many :deliveries

	has_many :subscriptions
	#has_many :products

	def display_name
		return :prod_name
	end
end
