class ChargesController < ApplicationController
def new
  @schedule = @user.schedules.all if @user
  @schedules = Schedule.all

    # this will remain empty unless you need to set some instance variables to pass on
end
 
def create
  plan = plan.find_by_sku("npcstpln")
  @schedule = @user.schedules.all if @user
  @schedules = Schedule.all
    # Amount in cents
   amount = params[:stripeAmount].to_i * 100 
 
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken],
      plan: "npbaypln"
    )
 
    # Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: plan.price_in_cents,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
 
 
    # place more code upon successfully creating the charge
    purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], amount: plan.price_in_cents, 
    description: plan.description, currency: "usd", customer_id: customer.id, plan_id: plan.id, uuid: SecureRandom.uuid)
  
    redirect_to purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
