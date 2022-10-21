module Rest
  module V1
    class VoteResource < ApplicationResource
      attributes :user_id, :alternative_id, :alternative_title, :user_name,
                 :decision_id, :decision_title, :user_avatar_url, :created_at

      has_one :user
      has_one :alternative
      filters :user_id

      class << self
        def records(options = {})
          context = options[:context]
          Vote.joins(user: :organization).where('organizations.id' => context[:current_user].organization.id)
        end
      end

      def alternative_title
        @model.alternative.title
      end

      def user_name
        "#{@model.user.first_name} #{@model.user.last_name}"
      end

      def user_avatar_url
        @model.user.avatar_url
      end

      def decision_id
        @model.alternative.decision_id
      end

      def decision_title
        @model.alternative.decision.title
      end

      filter :created_at, apply: ->(records, value, _options) {
        value = value.first if value.is_a? Array
        value = value.split('-')
        start_date = Time.parse(value.first).beginning_of_day
        if value.second.present?
          end_date = Time.parse(value.second).end_of_day
          records.where('votes.created_at >= (?) AND votes.created_at <= (?)', start_date, end_date)
        else
          records.where('votes.created_at >= (?)', start_date)
        end
      }

      filter :decision_title, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map(&->(w) { w.split })).flatten
                else
                  value.split
                end
        records.where('votes.decision_title ILIKE ?', "%#{words.join('%')}%")
      }

      filter :alternative_title, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map(&->(w) { w.split })).flatten
                else
                  value.split
                end
        records.where('votes.alternative_title ILIKE ?', "%#{words.join('%')}%")
      }
    end
  end
end
