module Rest
  module V1
    class InvitationsController < ApiController
      
      def create
        invitations_service = InvitationService.new(organization: current_user.organization, emails: params['data']['emails'])
        invitations_service.send_invitations
      end
    end
  end
end