class PurchasesController < ApplicationController
	def show
		@purchase = Purchase.find_by_uuid(params[:id])
		@product = Product.find(@purchases.product_id)
	end
end
