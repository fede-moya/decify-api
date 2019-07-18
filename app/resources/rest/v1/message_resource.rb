module Rest
  module V1
    class MessageResource < ApplicationResource
      attributes :message, :likes_count, :dislikes_count, :user_id, :decision_id, :user_name,
                 :decision_title, :user_avatar_url, :created_at

      has_one :user
      has_one :decision
      filters :user_id

      class << self
        def records(options = {})
          context = options[:context]
          Message.joins(user: :organization).where('organizations.id' => context[:current_user].organization.id)
        end
      end

      def user_name
        "#{@model.user.first_name} #{@model.user.last_name}"
      end

      def decision_title
        @model.decision.title
      end

      def user_avatar_url
        @model.user.avatar_url
      end

      filter :message, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map &->(w) { w.split }).flatten
                else
                  value.split
                end
        records.where('messages.message ILIKE ?', "%#{words.join('%')}%")
      }

      filter :decision_title, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map &->(w) { w.split }).flatten
                else
                  value.split
                end
        records.where('messages.decision_title ILIKE ?', "%#{words.join('%')}%")
      }

      filter :created_at, apply: ->(records, value, _options) {
        value = value.first if value.is_a? Array
        value = value.split('-')
        start_date = Time.parse(value.first).beginning_of_day
        if value.second.present?
          end_date = Time.parse(value.second).end_of_day
          records.where('messages.created_at >= (?) AND messages.created_at <= (?)', start_date, end_date)
        else
          records.where('messages.created_at >= (?)', start_date)
        end
      }
    end
  end
end
