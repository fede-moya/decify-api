# == Schema Information
#
# Table name: decision_tags
#
#  id          :bigint(8)        not null, primary key
#  decision_id :bigint(8)
#  tag_id      :bigint(8)
#

class DecisionTag < ApplicationRecord
  belongs_to :decision
  belongs_to :tag
end
