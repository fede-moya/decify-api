module Rest
  module V1
    class UserResource < ApplicationResource
      attributes :email, :first_name, :last_name, :password, :user_type, :created_at

      has_one :organizations
      has_many :decisions
      has_many :messages
      has_many :votes
    end
  end
end
