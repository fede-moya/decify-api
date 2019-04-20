module Rest
  module V1
    class AlternativeResource < ApplicationResource
      attributes :title, :votes_count, :decision_id

      has_one :decision
      has_many :votes

      filter :decision
    end
  end
end
