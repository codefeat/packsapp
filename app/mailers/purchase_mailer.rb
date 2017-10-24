class PurchaseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.purchase_mailer.new_purchase.subject
  #
  def new_purchase(purchase)

  	#@user = current_user
    @purchase = Purchase.last
    @plan = @purchase.product_id
    @thisAdmin = "delivery@nextpakk.com"


    mail(:to => "#{@thisAdmin}", subject: "New NextPakk Purchase.")
  end


  def new_order(order)
  	@order = Order.last
  	@user = User.find(@order.user_id)

  	mail(:to => "#{@user.email}", subject: "New NextPakk Delivery Ready for Scheduling.")
  end
end
