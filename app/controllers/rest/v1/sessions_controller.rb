module Rest
  module V1
    class SessionsController < ApplicationController
    	skip_before_action :verify_authenticity_token

    	def create
	    	command = AuthenticateUser.call(params[:email], params[:password])
			  if command.success?
          u = User.where(email: params[:email]).first
			    render json: { 
            auth_token: command.result,
            user: u.attributes.slice('id', 'first_name', 'last_name', 'email')
          }
				else
			    render json: { error: command.errors }, status: :unauthorized
			  end
    	end

      def destroy
      end

      def options
        head :ok
      end

    end
  end
end