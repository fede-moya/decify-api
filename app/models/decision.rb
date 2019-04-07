# frozen_string_literal: true

# == Schema Information
#
# Table name: decisions
#
#  id                 :bigint(8)        not null, primary key
#  title              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint(8)
#  decision_type_id   :bigint(8)
#  decision_type_name :string
#

class Decision < ApplicationRecord
  belongs_to :user
  belongs_to :decision_type
  has_many :alternatives
  has_many :user_decisions
  has_many :users, through: :user_decisions
  has_many :messages

  validates :title, presence: true
  validates :user, presence: true

  after_create :associate_owner

  def denormalize
    self.decision_type_name = decision_type.name
    self.decision_type_code = decision_type.code
  end

  def associate_owner
    UserDecision.create(user: user, decision: self)
  end

  def finalize
    # when decision type  is 50% + 1 of the votes
    if decision_type.code.eql?(0) && (alternatives.map(&:votes).map(&:count).max > users.count / 2)
      alternative = Alternative.new
      alternatives.each { |a| alternative = a if a.votes.count > alternative.votes.count }
      alternative.update(selected: true)
      self.finalized_at = Time.new.to_time
      save
    end
  end
end
