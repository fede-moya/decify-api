# == Schema Information
#
# Table name: decisions
#
#  id                 :bigint(8)        not null, primary key
#  title              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint(8)
#  decision_type_id   :bigint(8)
#  decision_type_name :string
#

require 'rails_helper'

RSpec.describe Decision, type: :model do
  
  describe 'validations' do 
		it { should validate_presence_of(:user) }
		it { should validate_presence_of(:title) }
	end

	describe 'associations' do
		it { should belong_to(:user) }
		it { should have_many(:alternatives) }
	end
end
