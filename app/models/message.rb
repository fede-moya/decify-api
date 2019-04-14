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
end
