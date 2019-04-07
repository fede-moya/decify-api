module Rest
  module V1
    class MessageResource < ApplicationResource
      attributes :message, :likes_count, :dislikes_count, :user_id, :decision_id, :user_name,
                 :decision_title, :user_avatar_url, :created_at

      has_one :user
      has_one :decision

      def user_name
        "#{@model.user.first_name} #{@model.user.last_name}"
      end

      def decision_title
        @model.decision.title
      end

      def user_avatar_url
        @model.user.avatar_url
      end
    end
  end
end
