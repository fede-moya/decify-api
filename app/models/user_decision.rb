# == Schema Information
#
# Table name: user_decisions
#
#  id          :bigint(8)        not null, primary key
#  user_id     :bigint(8)        not null
#  decision_id :bigint(8)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserDecision < ApplicationRecord
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_participants_count, :send_notification
  before_destroy :decrement_decision_participants_count

  private

  def send_notification
    NotificationSenderJob.perform_later('decision_created', decision_id.to_s, [user_id.to_s])
  end

  def increment_decision_participants_count
    decision.increment_participants_count
  end

  def decrement_decision_participants_count
    decision.decrement_participants_count
  end
end
