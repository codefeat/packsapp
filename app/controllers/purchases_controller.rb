class PurchasesController < ApplicationController

	

	def show
		@purchase = Purchase.find_by_uuid(params[:id])
		@plan = Plan.find(@purchase.product_id)
		@order = Order.find(@purchase.order_num)
		@user = User.find(@order.user_id)
		@delivery = Delivery.find_by_order_id(@order)
		@schedule = Schedule.find_by_delivery_id(@delivery)
  		#@delivery = Delivery.find(params[:oid])
    	#@order = Order.find(@delivery.order_id)
    	@planType = Plan.find(@purchase.subscription_id)
	end
end
