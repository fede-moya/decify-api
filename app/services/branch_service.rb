class BranchService

  attr_accessor :branch_client

  def initialize
    @branch_client = BranchIO::Client.new(Rails.application.secrets.branch_client_key, Rails.application.secrets.branch_client_secret)
  end

  def get_client
    @branch_client
  end
  
end
