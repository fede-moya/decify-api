module Rest
  module V1
    class OrganizationResource < ApplicationResource
      attributes :text
      
      has_many :decisions
    end
  end
end
