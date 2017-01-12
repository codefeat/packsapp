class UserMailer < ActionMailer::Base
    default :from => "delivery@gonextpakk.com"

 def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.first_name} <#{user.email}>", :subject => "Registration Confirmation")
 end
end