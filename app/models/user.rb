# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                 :bigint(8)        not null, primary key
#  email              :string
#  first_name         :string
#  last_name          :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_type          :integer
#  password_digest    :string
#  organization_id    :bigint(8)
#  authorization_code :string
#

class User < ApplicationRecord
  has_secure_password validations: false

  has_many :decisions
  belongs_to :organization, optional: true
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_decisions
  has_many :decisions, through: :user_decisions
  has_many :votes
  has_many :messages

  validates :email, presence: true, uniqueness: true

  enum user_type: %i[user admin master]
end
