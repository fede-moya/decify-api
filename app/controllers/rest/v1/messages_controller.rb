# frozen_string_literal: true

module Rest
  module V1
    class MessagesController < ApiController
      before_action :message, only: %i[like dislike]
      before_action :validate_current_user, only: %i[like dislike]

      def like
        @message.increment!(:likes_count)
        head :ok
      end

      def dislike
        @message.increment!(:dislikes_count)
        head :ok
      end

      private

      def validate_current_user
        head :forbbiden unless current_user.organization_id.eql?(@message.decision.user.organization.id)
      end

      def message
        @message = Message.find_by(id: params[:id])
        head :no_found unless @message
      end
    end
  end
end
