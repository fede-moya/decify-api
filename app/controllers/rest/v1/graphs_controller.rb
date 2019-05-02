# frozen_string_literal: true

module Rest
  module V1
    class GraphsController < ApiController
      before_action :graph_service
      
      def decisions_vs_time
        render json: graph_service.decisions_vs_time(params[:state]), status: :ok
      end

      def votes_vs_time
        render json: graph_service.votes_vs_time, status: :ok
      end

      def messages_vs_time
        render json: graph_service.messages_vs_time, status: :ok
      end

      private

      def graph_service
        @graph_service ||= GraphService.new(current_user.organization)
      end
    end
  end
end
