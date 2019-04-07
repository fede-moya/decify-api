# frozen_string_literal: true

module Rest
  module V1
    class DashboardsController < ApiController
      # params[:options] should be on of [day, week, month]
      def overview
        render json: {
          created_decisions: DashboardService.created_decisions_since_count(params[:option]),
          finalized_decisions: DashboardService.finalized_decisions_since_count(params[:option]),
          votes: DashboardService.created_votes_since_count(params[:option]),
          messages: DashboardService.created_messages_since_count(params[:option])
        }, status: :ok
      end

      def pending_decisions
        render json: {
          pending_decisions: DashboardService.pending_decisions_count
        }
      end
    end
  end
end
