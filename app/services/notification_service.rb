class NotificationService
  class << self
    def notify_decision_creation(decision_id, users)
    	decision = Decision.find_by(id: decision_id)	
    	return unless decision
    	# participants = (decision.users.map(&:id) -[decision.first.user_id]).map(&:to_s)
    	OneSignalService.notify_users(ids: users, title: 'Nueva Decisión', message: decision.title)
    end

    def notify_decision_finalization(decision_id)
    	decision = Decision.find_by(id: decision_id)
    	return unless decision
    	OneSignalService.notify_users(ids: decision.users.map(&:id), title: 'Decisión Finalizada', message: decision.title)
    end

    def notify_message_creation(message_id)
    	message = Message.find_by(id: message_id)
    	return unless message
    	users = (message.decision.users.map(&:id) -[message.user_id]).map(&:to_s)
    	OneSignalService.notify_users(ids: users, title: 'Mensaje nuevo', message: message.message)
    end
  end
end
