class UserMailer < ApplicationMailer

	def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Decify')
  end

  def new_mobile_session(user, deep_link)
  	@user = user
  	@deep_link = deep_link
  	mail(to: @user.email, subject: 'New Decify Session')
  end

end
