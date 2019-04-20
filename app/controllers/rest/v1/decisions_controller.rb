module Rest
  module V1
    class DecisionsController < ApiController
      after_action :create_associations, only: [:create]

      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }
          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          decision = Decision.find(decision_id)
          rsp['participants'] = JSON.parse(decision.users.to_json)
          rsp['alternatives'] = JSON.parse(decision.alternatives.to_json)

          response.body = rsp.to_json
        end
      end
    end
  end
end
