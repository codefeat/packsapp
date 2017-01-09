class Product < ActiveRecord::Base
	has_many :orders
	has_many :purchases
	#belongs_to :order

	def total_price_in_cents
		(self.total_price * 100).to_i
	end
end
