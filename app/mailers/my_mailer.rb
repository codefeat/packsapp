class MyMailer < Devise::Mailer   
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
  default from: "NextPakk Delivery"

	def confirmation_instructions(record, token, opts={})
	  headers["Custom-header"] = "NextPakk Delivery"
	  opts[:from] = 'delivery@nextpakk.com'
	  opts[:reply_to] = 'delivery@nextpakk.com'
	  super
	end

	def purchase_receipt(purchase)
		render layout: 'purchase_mailer'
	    #@from = "delivery@gonextpakk.com"
		#@user = current_user
		@purchase = purchase
		mail(:to => "#{@user_fname} <#{@user_email}>", from: "delivery@nextpakk.com", subject: "Thank you for using NextPakk.")
	end

	def new_purchase(purchase)
  	#@user = current_user
    @purchase = purchase
    @plan = @purchase.plan


    mail(:to => "#{purchase.email}", from: "delivery@nextpakk.com", subject: "Thank you for using NextPakk.")
  end



end