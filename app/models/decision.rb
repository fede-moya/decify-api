# == Schema Information
#
# Table name: decisions
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

class Decision < ApplicationRecord

	belongs_to :user
	has_many :alternatives

	validates_presence_of(:user)
	validates_presence_of(:title)
	
end
