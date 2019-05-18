module Rest
  module V1
    class OrganizationResource < ApplicationResource
      attributes :name, :description, :user_id, :avatar_url, :users_count
      
      has_one :user

      def avatar_url
        "http://www.saleclickonline.cl/wp-content/uploads/2017/02/nuevo-logo-google.jpeg"
      end

      # only active users
      def users_count
        23
      end

    end
  end
end