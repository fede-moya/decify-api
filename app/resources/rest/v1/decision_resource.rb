module Rest
  module V1
    class DecisionResource < ApplicationResource

      attributes :title, :description
      has_one :user
      has_many :alternatives

      filter :user
    end
  end
end