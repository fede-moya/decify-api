module Rest
  module V1
    class UserResource < ApplicationResource

      attributes :username, :first_name, :last_name
      has_many :decisions

    end
  end
end