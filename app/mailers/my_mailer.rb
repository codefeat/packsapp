class MyMailer < Devise::Mailer   
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
  default from: "NextPakk Delivery"

	def confirmation_instructions(record, token, opts={})
	  headers["Custom-header"] = "NextPakk Delivery"
	  opts[:from] = 'delivery@gonextpakk.com'
	  opts[:reply_to] = 'delivery@gonextpakk.com'
	  super
	end

	def purchase_receipt purchase
		render layout: 'purchase_mailer'
	    
		#@user = current_user
		@purchase = purchase
		mail(:to => "#{@user_fname} <#{@user_email}>", subject: "Thank you for using NextPakk.")
	end



end