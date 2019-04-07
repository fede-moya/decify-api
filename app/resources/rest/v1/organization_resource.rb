module Rest
  module V1
    class OrganizationResource < ApplicationResource
      attributes :name, :description, :user_id
      
      has_one :user

    end
  end
end