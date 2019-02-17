module Rest
  module V1
    class SessionsController < ApplicationController
    	skip_before_action :verify_authenticity_token

    	def create
        command = AuthenticateUser.call(params[:email], params[:password], params[:code])
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

      def deep_link_mail
        if params[:email]
          user = User.find_by(email: params[:email])          
          render :unauthorized unless user
          branch_service = BranchService.new
          deep_link = branch_service.get_client.link(channel:'decify-api', 
            feature:'login', 
            data:{
              code:  SecureRandom.hex(10),
              email: params[:email]
            }
          ).url
          
          UserMailer.new_mobile_session(user, deep_link).deliver_now

          head :no_content
        else
          render :unauthorized
        end
      end
    end
  end
end