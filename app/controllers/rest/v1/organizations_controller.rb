module Rest
  module V1
    class OrganizationsController < ApiController
      before_action :organization, only: %i[upload_avatar avatar]

      def upload_logo
        if organization.present?
          organization.update(upload_logo_params)
          head :ok
        else
          head :not_found
        end
      end

      def logo
        if organization&.logo&.attached?
          redirect_to rails_blob_url(organization.logo)
        else
          head :not_found
        end
      end

      private

      def organization
        @organization ||= Organization.find(params[:id])
      end

      def upload_logo_params
        params.permit(:logo)
      end
    end
  end
end
