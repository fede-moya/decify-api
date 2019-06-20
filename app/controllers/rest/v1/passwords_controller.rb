module Rest
  module V1
    class PasswordsController < ApplicationController
    	skip_before_action :verify_authenticity_token

    	def create
        user = User.find_by(email: params[:email])
        if user.nil?
          render json: { error: 'No user with such email' }, status: :unauthorized
        else
          password = SecureRandom.hex(8)
          user.update(password: password)
          UserMailer.delay.forgotten_password(user, password)
          render json: { status: 'success', message: 'Email sent to user with instructions to recover account' }, status: :ok
        end
      end
    end
  end
end