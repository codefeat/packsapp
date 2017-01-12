class PurchasesController < ApplicationController

	@user = current_user

	def show
		@purchase = Purchase.find_by_uuid(params[:id])
		@plan = Plan.find(@purchase.product_id)
  		#@delivery = Delivery.find(params[:oid])
    	#@order = Order.find(@delivery.order_id)
	end
end
