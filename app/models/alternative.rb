# == Schema Information
#
# Table name: alternatives
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  decision_id :bigint(8)
#

class Alternative < ApplicationRecord

	belongs_to :decision
	
	validates_presence_of(:decision)
	validates_presence_of(:title)

end
