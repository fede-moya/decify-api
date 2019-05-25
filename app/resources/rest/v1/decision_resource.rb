module Rest
  module V1
    class DecisionResource < ApplicationResource
      attributes :title, :description, :user_name, :user_avatar_url, :created_at,
                 :messages_count, :participants_count, :user_id, :decision_type_name,
                 :decision_type_code, :decision_type_id, :state, :finalized_at, :votes_count,
                 :alternatives_count

      has_one :user
      has_many :alternatives
      has_many :users
      has_many :messages
      has_many :tags
      filters :decision_type_id, :user_id, :state

      class << self
        def records(options = {})
          context = options[:context]
          Decision.joins(user: :organization).where('organizations.id' => context[:current_user].organization.id)
        end
      end

      def user_name
        "#{@model.user.first_name} #{@model.user.last_name}"
      end

      def user_avatar_url
        @model.user.avatar_url
      end

      filter :finalized, apply: ->(records, _value, _options) {
        records.where.not(finalized_at: nil)
      }

      filter :title, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map &->(w) { w.split }).flatten
                else
                  value.split
                end
        records.where('title ILIKE ?', "%#{words.join('%')}%")
      }

      filter :description, apply: ->(records, value, _options) {
        words = if value.is_a?(Array)
                  (value.map &->(w) { w.split }).flatten
                else
                  value.split
                end
        records.where('description ILIKE ?', "%#{words.join('%')}%")
      }

      filter :participants, apply: ->(records, value, _options) {
        value = value.map(&:to_i)
        decisions_with_that_participants = []
        decisions = UserDecision.where(user_id: value, decision_id: records.map(&:id)).map(&:decision)
        decisions.each do |decision|
          decision_users = decision.users.map(&:id)
          decisions_with_that_participants << decision.id if (decision_users & value).size == value.size
        end
        Decision.where(id: decisions_with_that_participants)
      }

      filter :tags, apply: ->(records, value, _options) {
        value = value.map(&:to_i)
        decisions_with_that_tags = []
        decisions = DecisionTag.where(tag_id: value, decision_id: records.map(&:id)).map(&:decision)
        decisions.each do |decision|
          decision_tags = decision.tags.map(&:id)
          decisions_with_that_tags << decision.id if (decision_tags & value).size == value.size
        end
        Decision.where(id: decisions_with_that_tags)
      }

      filter :created_at, apply: ->(records, value, _options) {
        value = value.first if value.is_a? Array
        value = value.split('-')
        start_date = Time.parse(value.first).beginning_of_day
        if value.second.present?
          end_date = Time.parse(value.second).end_of_day
          records.where('created_at >= (?) AND created_at <= (?)', start_date, end_date)
        else
          records.where('created_at >= (?)', start_date)
        end
      }

      filter :finalized_at, apply: ->(records, value, _options) {
        value = value.first if value.is_a? Array
        value = value.split('-')
        start_date = Time.parse(value.first).beginning_of_day
        if value.second.present?
          end_date = Time.parse(value.second).end_of_day
          records.where('finalized_at >= (?) AND finalized_at <= (?)', start_date, end_date)
        else
          records.where('finalized_at >= (?)', start_date)
        end
      }
    end
  end
end
