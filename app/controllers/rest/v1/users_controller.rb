module Rest
  module V1
    class UsersController < ApiController
      skip_before_action :authenticate_request, only: [:create]
      before_action :user, only: %i[upload_avatar avatar]

      def upload_avatar
        if user.present?
          user.update(upload_avatar_params)
          user.reload
          render json: { avatar_url: user.avatar_url }, status: :ok
          # head :ok
        else
          head :not_found
        end
      end

      def avatar
        if user&.avatar&.attached?
          redirect_to rails_blob_url(user.avatar)
        else
          head :not_found
        end
      end

      private

      def user
        @user ||= User.find(params[:id])
      end

      def upload_avatar_params
        params.permit(:avatar)
      end
    end
  end
end
