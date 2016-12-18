class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	default from: "NextPakk Delivery"

	def purchase_receipt purchase
		@purchase = purchase
		mail to: purchase_email, subject: "Thank you for using NextPakk."
	end
end