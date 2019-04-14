# == Schema Information
#
# Table name: decision_types
#
#  id   :bigint(8)        not null, primary key
#  name :string
#  code :integer
#

class DecisionType < ApplicationRecord
  has_many :decisions
end
