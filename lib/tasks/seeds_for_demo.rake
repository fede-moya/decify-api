task seeds_for_demo: :environment do
	seeds = File.read('public/decisions.json')
	decisions_json = JSON.parse(seeds)
	decisions_json.each do |decision_json|
		creator = User.find_by(email: decision_json['user_email'])
		decision = Decision.create({
			title: decision_json['title'],
			description: decision_json['description'],
			decision_type: DecisionType.first,
			user: creator
		})

		participants = []
		decision_json['participants_emails'].each do |email|
			UserDecision.create({
				user: User.find_by(email: email),
				decision: decision
			})
		end
		alternatives = []

		decision_json['alternatives'].each do |alternative|
			alternatives.push(Alternative.create({ title:  alternative['title'], decision_id: decision.id }))
		end

		decision_json['votes'].each do |vote|
			Vote.create(user: User.find_by(email: vote['user_email']), alternative: alternatives[vote['alternative']], created_at: vote['created_at'])
		end

		decision_json['messages'].each do |message|
			Message.create({
				message: message['message'],
				user: User.find_by(email: message['user_email']),
				decision_id: decision.id,
				created_at: message['created_at']
			})
		end

		decision_json['tags'].each do |t|
			tag = Tag.find_by(text: t)
			unless tag
				tag = Tag.create(text: t)
			end
			DecisionTag.create(decision_id: decision.id, tag_id: tag.id)
		end

		decision.update(created_at: decision_json['created_at'])
		decision.finalize
		decision.reload
		unless decision.finalized_at.nil?
			decision.update(finalized_at: decision_json['finalized_at'])
		end
	end
end
