class InvitationService
  attr_accessor :organization, :emails

  def initialize(args)
    @organization = args[:organization]
    @emails = args[:emails]
  end

  def send_invitations
    emails.each do |email|
      user = User.create!(
        email: email,
        organization: organization,
        authorization_code: SecureRandom.hex(10)
      )

      send_invitation user
    end
  end

  def send_invitation(user)
    branch_service = BranchService.new
    deep_link = branch_service.get_client.link(
      channel: 'decify-api',
      feature: 'login',
      data: {
        code:  user.authorization_code,
        email: user.email,
        first_login: true
      }
    ).url

    UserMailer.delay.new_mobile_session(user, deep_link)
  end
end
