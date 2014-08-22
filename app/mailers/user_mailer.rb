class UserMailer < ActionMailer::Base
  default from: "airbedlewagon@gmail.com"

  def welcome_email(user)
    @user = user
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Airbed')
  end

  def newapt_email(user)
    @user = user
    mail(to: @user.email, subject: 'Thanks for sharing your apartment')
  end
end
