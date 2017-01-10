# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class RegistrationConfirmationPreview < ActionMailer::Preview
  def sample_mail_preview
    RegistrationConfirmation.sample_email(User.first)
  end
end