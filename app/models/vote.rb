# == Schema Information
#
# Table name: votes
#
#  id             :bigint(8)        not null, primary key
#  user_id        :bigint(8)        not null
#  alternative_id :bigint(8)        not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :alternative

  after_create :finalize_decision, :increment_alternative_votes_count
  before_destroy :decrement_alternative_votes_count

  private

  def finalize_decision
    alternative.decision.finalize
  end

  def increment_alternative_votes_count
    alternative.increment_votes_count
  end

  def decrement_alternative_votes_count
    alternative.decrement_votes_count
  end
end
