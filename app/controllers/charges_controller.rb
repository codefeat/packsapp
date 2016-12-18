class ChargesController < ApplicationController
def new
    # this will remain empty unless you need to set some instance variables to pass on
end
 
def create
    # Amount in cents
    #amount = params[:stripeAmount].to_i * 100
 
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )
 
    # Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: params[:amount],
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
 
 
    # place more code upon successfully creating the charge
    order = Order.create(user_id: params[:user_id] card: params[:stripeToken], order_size: params[:order_size], 
    order_description: params[:order_description], order_qty: params[:order_qty], amount: params[:amount],  product_id: params[:product_id],
    uuid:, SecureRandom.uuid)
  
    redirect_to order

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
