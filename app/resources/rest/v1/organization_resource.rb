module Rest
  module V1
    class OrganizationResource < ApplicationResource
      attributes :name, :description, :user_id, :logo_url, :users_count
      
      has_one :user
      has_many :users

      # only active users
      def users_count
        23
      end

    end
  end
end