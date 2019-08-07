module Rest
  module V1
    class SessionsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        command = AuthenticateUser.call(params[:email], params[:password], params[:code])
        if command.success?
          u = User.where(email: params[:email]).first
          u.update(authorization_code: nil) if params[:code].present?
          user_attributes = Hash[u.attributes.slice('id', 'first_name', 'last_name', 'email', 'organization_id', 'avatar_url').map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }]
          user_attributes['avatar_url'] = u.avatar_url
          render json: {
            auth_token: command.result,
            user: user_attributes
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
      end

      def destroy; end

      def deep_link_mail
        user = User.find_by_email(params[:email])

        unless user.present?
          head :unauthorized
          return
        end

        user.update(authorization_code: SecureRandom.hex(10))

        branch_service = BranchService.new
        deep_link = branch_service.get_client.link(
          channel: 'decify-api',
          feature: 'login',
          data: {
            code:  user.authorization_code,
            email: user.email
          }
        ).url

        UserMailer.delay.new_mobile_session(user, deep_link)

        head :no_content
      end
    end
  end
end
