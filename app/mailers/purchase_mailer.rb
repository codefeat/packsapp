class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	default from: "NextPakk Delivery"

	def purchase_receipt purchase
		#@user = current_user
		@purchase = purchase
		mail(:to => "#{@user_fname} <#{@user_email}>", subject: "Thank you for using NextPakk.")
	end
end