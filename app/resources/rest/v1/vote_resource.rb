module Rest
  module V1
    class VoteResource < ApplicationResource
      attributes :user_id, :alternative_id, :alternative_title, :user_name,
                 :decision_id, :decision_title, :user_avatar_url, :created_at

      has_one :user
      has_one :alternative

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
    end
  end
end
