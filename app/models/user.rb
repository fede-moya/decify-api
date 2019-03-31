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

	has_secure_password

	has_many :decisions
	has_many :organizations

	enum user_type: [:user, :admin, :master]


	validates :user_type, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true

end
