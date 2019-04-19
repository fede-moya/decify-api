module Rest
  module V1
    class AlternativeResource < ApplicationResource
      attributes :title, :votes_count
      has_one :decision
      has_many :votes

      filter :decision
    end
  end
end
