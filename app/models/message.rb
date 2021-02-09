# == Schema Information
#
# Table name: messages
#
#  id             :bigint(8)        not null, primary key
#  message        :string
#  user_id        :bigint(8)
#  decision_id    :bigint(8)
#  likes_count    :integer
#  dislikes_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Message < ApplicationRecord
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_messages_count, :send_notification
  after_create :denormalize_decision_title
  before_destroy :decrement_decision_messages_count
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_messages_count, :send_notification
  after_create :denormalize_decision_title
  before_destroy :decrement_decision_messages_count
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_messages_count, :send_notification
  after_create :denormalize_decision_title
  before_destroy :decrement_decision_messages_count
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_messages_count, :send_notification
  after_create :denormalize_decision_title
  before_destroy :decrement_decision_messages_count
  belongs_to :user
  belongs_to :decision

  validates :user, presence: true
  validates :decision, presence: true

  after_create :increment_decision_messages_count, :send_notification
  after_create :denormalize_decision_title
  before_destroy :decrement_decision_messages_count

  private

  def send_notification
    NotificationService.notify_message_creation(id)
    # NotificationSenderJob.perform_later('message_created', id.to_s)
  end

  def increment_decision_messages_count
    decision.increment_messages_count
  end

  def decrement_decision_messages_count
    decision.decrement_messages_count
  end

  def denormalize_decision_title
    update(decision_title: decision.title)
  end
end
