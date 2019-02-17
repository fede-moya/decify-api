class UserMailer < ApplicationMailer

	def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Decify')
  end

  def new_mobile_session(user, deep_link)
  	@user = user
  	@deep_link = deep_link
  	mail(to: @user.email, subject: 'New Decify Session')
  end

  def forgotten_password(user, password)
  	@user = user
  	@password = password
  	mail(to: @user.email, subject: 'New Decify Password')
  end

end
