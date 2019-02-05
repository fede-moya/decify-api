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

require 'rails_helper'

RSpec.describe User, type: :model do

	describe 'validations' do 
		it { should validate_presence_of(:username) }
	end

	describe 'associations' do
		it { should have_many(:decisions) }
	end
  
end
