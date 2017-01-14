# Preview all emails at http://localhost:3000/rails/mailers/purchase_mailer
class PurchaseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/purchase_mailer/new_purchase
  def new_purchase
  	purchase =Purchase.last
    PurchaseMailer.new_purchase(purchase)
  end

end
