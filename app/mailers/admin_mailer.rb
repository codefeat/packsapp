class AdminMailer < ApplicationMailer
	default :from => "delivery@nextpakk.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.new_user.subject
  #
  def new_user(user)
    @user = User.last
    @thisAdmin = "delivery@nextpakk.com"

    mail(:to => "#{@thisAdmin}", subject: "New NextPakk User.")
  end
end
