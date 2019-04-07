# frozen_string_literal: true

module Rest
  module V1
    class ApplicationResource < JSONAPI::Resource
      abstract

      filter :last, apply: ->(records, value, _options) {
        records = records.order(created_at: :desc)
        first_value_records = records[0...value.first.to_i]
        records.where(id: first_value_records.map(&:id))
      }
    end
  end
end
