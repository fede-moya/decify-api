module Rest
  module V1
    class UserResource < ApplicationResource

      attributes :email, :first_name, :last_name
      has_many :decisions

    end
  end
end