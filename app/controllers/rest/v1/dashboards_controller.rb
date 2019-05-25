# frozen_string_literal: true

module Rest
  module V1
    class DashboardsController < ApiController
      before_action :dashboard_service

      # params[:options] should be on of [day, week, month]
      def overview
        render json: {
          created_decisions: dashboard_service.created_decisions_since_count(params[:option]),
          finalized_decisions: dashboard_service.finalized_decisions_since_count(params[:option]),
          votes: dashboard_service.created_votes_since_count(params[:option]),
          messages: dashboard_service.created_messages_since_count(params[:option])
        }, status: :ok
      end

      def pending_decisions
        render json: {
          pending_decisions: dashboard_service.pending_decisions_count
        }, status: :ok
      end

      private

      def dashboard_service
        @dashboard_service ||= DashboardService.new(current_user)
      end
    end
  end
end
