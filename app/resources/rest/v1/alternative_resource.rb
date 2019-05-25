module Rest
  module V1
    class AlternativeResource < ApplicationResource
      attributes :title, :votes_count, :decision_id

      has_one :decision
      has_many :votes

      class << self
        def records(options = {})
          context = options[:context]
          Alternative.joins(user: :organization).where('organizations.id' => context[:current_user].organization.id)
        end
      end

      filter :decision
    end
  end
end
