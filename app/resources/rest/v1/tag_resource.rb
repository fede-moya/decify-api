module Rest
  module V1
    class TagResource < ApplicationResource
      attributes :text

      has_many :decisions
    end
  end
end
