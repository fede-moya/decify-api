module Rest
  module V1
    class UserResource < ApplicationResource
      attributes :email, :first_name, :last_name, :password, :user_type, :created_at, :avatar_url, :organization_id

      has_one :organizations
      has_many :decisions
      has_many :messages
      has_many :votes

      class << self
        def records(options = {})
          context = options[:context]
          User.where(organization_id: context[:current_user].organization.id)
        end
      end

      filter :active, apply: ->(records, _value, _options) {
        records.where.not(first_name: nil)
      }

      filter :pending, apply: ->(records, _value, _options) {
        records.where(first_name: nil)
      }


    end
  end
end
