# frozen_string_literal: true

module Rest
  module V1
    class VoteResource < ApplicationResource
      has_one :user
      has_one :alternative
    end
  end
end
