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


    mail(:to => "#{@purchase.email}", subject: "Thank you for using NextPakk.")
  end
end
