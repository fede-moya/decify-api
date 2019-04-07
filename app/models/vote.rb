# frozen_string_literal: true

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

  after_create :finalize_decision

  private

  def finalize_decision
    alternative.decision.finalize
  end
end
