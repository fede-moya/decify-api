module Rest
  module V1
    class AlternativeResource < ApplicationResource

      attributes :title, :description
      has_one :decision

      filter :decision
    end
  end
end