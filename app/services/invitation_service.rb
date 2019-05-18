class InvitationService

  attr_accessor :organization, :emails

  def initialize(args)
    @organization = args[:organization]
    @emails = args[:emails]
  end

  def send_invitations
  end
end
