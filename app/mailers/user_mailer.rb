class UserMailer < ActionMailer::Base
  default from: "kevin@kevincollignon.com"

  def welcome_email(user)
  	@user = user
  	@url = "localhost:3000/login"
  	mail(:to => user, :subject => "Welcome to QR Groupie!")
  end
end
