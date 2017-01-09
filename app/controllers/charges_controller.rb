class ChargesController < ApplicationController
def new
  @schedule = @user.schedules.all if @user
  @schedules = Schedule.all

    # this will remain empty unless you need to set some instance variables to pass on
end
 
def create
  @subscription = Subscription.find_by(params[:id])
  #@subscription = Subscription.find(params[:subscription][:plan_id]) if params[:plan_id].present?
  @user = current_user
  @subscriptions = Subscription.all
  @plan = Plan.find(@subscription.plan_id)
  
  #@plan = Plan.find_by id: params[:subscription][:plan_id]
  #@subscription = current_user.subscriptions.find(params[:id])
  #@plan = Plan.find(params[:id]) if params[:id].present?
  #@sku = subscription.plan.sku
 # @schedule = @user.schedules.all if @user
 # @schedules = Schedule.all
    # Amount in cents

    @thisplan = params[:subscriptionPlanId]
   
 
    # Create the customer in Stripe
    
    if @thisplan  == 1
        amount = params[:stripeAmount].to_i * 100 + 100
        customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        card: params[:stripeToken],
      )
    else
        amount = params[:stripeAmount].to_i * 100 
        customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        card: params[:stripeToken],
        
        plan: params[:planSku]
     
    )
    end
  #raise "foo"
    # # Create the charge using the customer data returned by Stripe API
    # charge = Stripe::Charge.create(
    #   customer: customer.id,
    #   amount: @subscription.plan.price_in_cents,
    #   description: 'NextPakk customer',
    #   currency: 'usd'
    # )
 
 
    # place more code upon successfully creating the charge
    purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], amount: params[
      :amount], 
    description: params[:planDescrip], currency: "usd", customer_id: customer.id, product_id: @thisplan, uuid: SecureRandom.uuid)
  
    redirect_to purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
