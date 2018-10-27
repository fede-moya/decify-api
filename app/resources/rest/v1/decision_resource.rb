module Rest
  module V1
    class DecisionResource < ApplicationResource

      attributes :title, :description
      has_one :user

      filter :user
    end
  end
end