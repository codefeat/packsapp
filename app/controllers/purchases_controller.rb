class PurchasesController < ApplicationController
	def show
		@purchase = Purchase.find_by_uuid(params[:id])
		@plan = Plan.find(@purchase.plan_id)
	end
end
