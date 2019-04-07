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
end
