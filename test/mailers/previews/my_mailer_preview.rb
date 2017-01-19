# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class MyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_mailer/new_user
  def confirmation_instructions
    MyMailer.confirmation_instructions(User.first, "faketoken", {})
  end

  def reset_password_instructions
    MyMailer.reset_password_instructions(User.first, "faketoken", {})
  end

  def unlock_instructions
    MyMailer.unlock_instructions(User.first, "faketoken", {})
  end

end