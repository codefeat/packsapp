class ChargesController < ApplicationController
def new
  @schedule = @user.schedules.all if @user
  @schedules = Schedule.all

    # this will remain empty unless you need to set some instance variables to pass on
end
 
def create
  product = Product.find_by_sku("nplrgpkg")
  @schedule = @user.schedules.all if @user
  @schedules = Schedule.all
    # Amount in cents
   amount = (3.99).to_i + params[:stripeAmount].to_i * 100 
 
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )
 
    # Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: product.total_price_in_cents,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
 
 
    # place more code upon successfully creating the charge
    purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], amount: product.total_price_in_cents + 3.99, 
    description: charge.description, currency: charge.currency, customer_id: customer.id, product_id: product.id, uuid: SecureRandom.uuid)
  
    redirect_to purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
