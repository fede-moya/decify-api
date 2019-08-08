task delete_users_demo: :environment do
	emails = [ 'martinrodriguezgervasio@gmail.com', 'adrian.celi2193@gmail.com', 'fmoya@loopstud.io' ]
	users = User.where(email: emails)
	decisions = Decision.where(user_id: users.map(&:id))
	DecisionTag.where(decision_id: decisions.map(&:id)).delete_all
	UserDecision.where(user_id: users.map(&:id)).delete_all
	Message.where(user_id: users.map(&:id)).delete_all
	Vote.where(user_id: users.map(&:id)).delete_all
	Alternative.where(decision_id: decisions.map(&:id)).delete_all
	decisions.delete_all
	users.delete_all
end

