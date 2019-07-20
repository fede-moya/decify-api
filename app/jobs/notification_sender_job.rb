class NotificationSenderJob < ApplicationJob
	def perform(notification_type, id, users = nil)
		case notification_type
		when 'decision_created'
			NotificationService.notify_decision_creation(id, users)
		when 'decision_finalized'
			NotificationService.notify_decision_finalization(id)
		when 'message_created'
			NotificationService.notify_message_creation(id)
		end
	end
end
