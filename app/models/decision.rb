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
  end

  def associate_owner
    UserDecision.create(user: user, decision: self)
  end
end
