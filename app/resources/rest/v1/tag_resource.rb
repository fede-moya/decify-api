module Rest
  module V1
    class TagResource < ApplicationResource
      attributes :text

      has_many :decisions

      class << self
        def default_sort
          [{ field: 'id', direction: :desc }]
        end
      end

      filter :text, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map &->(w) { w.split }).flatten
                else
                  value.split
                end
        records.where('text like ?', "%#{words.join('%')}%")
      }
    end
  end
end
