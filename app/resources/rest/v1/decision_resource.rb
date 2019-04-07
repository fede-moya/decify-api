# frozen_string_literal: true

module Rest
  module V1
    class DecisionResource < ApplicationResource
      attributes :title, :description, :user_name, :user_avatar_url
      has_one :user
      has_many :alternatives

      def user_name
        "#{@model.user.first_name} #{@model.user.last_name}"
      end

      def user_avatar_url
        @model.user.avatar_url
      end

      filter :finalized, apply: ->(records, _value, _options) {
        records.where.not(finalized_at: nil)
      }
    end
  end
end
