class Mailer < ActionMailer::Base
  default from: "busonrails@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Bienvenue sur BusonRails')
  end
end
