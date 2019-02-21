# == Schema Information
#
# Table name: organizations
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  user_id     :bigint(8)
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Organization < ApplicationRecord

	belongs_to :user

	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
	validates :user, presence: true
end
