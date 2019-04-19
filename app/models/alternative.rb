# frozen_string_literal: true

# == Schema Information
#
# Table name: alternatives
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  decision_id :bigint(8)
#  user_id     :bigint(8)        not null
#  selected    :boolean          default(FALSE)
#

class Alternative < ApplicationRecord
  belongs_to :decision
  belongs_to :user, optional: true
  has_many :votes

  validates :title, presence: true

  before_create :set_user_from_decision

  after_update :update_decision_votes_count, if: :saved_change_to_votes_count?

  def increment_votes_count
    self.votes_count += 1
    save
  end

  def decrement_votes_count
    self.votes_count -= 1
    save
  end

  private

  def set_user_from_decision
    self.user = decision.user unless user.present?
  end

  def update_decision_votes_count
    decision.set_votes_count_from_alternatives
  end
end
