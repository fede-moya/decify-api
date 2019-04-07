# == Schema Information
#
# Table name: groups
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  code            :string
#  organization_id :bigint(8)        not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Group < ApplicationRecord
  belongs_to :organization
  has_many :user_groups
  has_many :users, through: :user_groups

  validates :name, uniqueness: true
  validates :code, uniqueness: true

end
