# frozen_string_literal: true

module Rest
  module V1
    class DecisionResource < ApplicationResource
      attributes :title, :description
      has_one :user
      has_many :alternatives

      filter :finalized, apply: ->(records, _value, _options) {
        records.where.not(finalized_at: nil)
      }
    end
  end
end
