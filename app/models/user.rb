# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_type       :integer
#  password_digest :string
#

class User < ApplicationRecord

	has_secure_password

	has_many :decisions

	enum user_type: [:user, :admin, :master]
end
