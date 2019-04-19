module Rest
  module V1
    class AlternativeResource < ApplicationResource
      attributes :title
      has_one :decision

      filter :decision
    end
  end
end
