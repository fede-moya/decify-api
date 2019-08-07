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

  validates :user, :decision, presence: true
  validates_uniqueness_of :user_id, scope: [:decision_id]

  after_create :increment_decision_participants_count
  before_destroy :decrement_decision_participants_count

  private

  def increment_decision_participants_count
    decision.increment_participants_count
  end

  def decrement_decision_participants_count
    decision.decrement_participants_count
  end
end
