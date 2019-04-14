# == Schema Information
#
# Table name: alternatives
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  decision_id :bigint(8)
#  user_id     :bigint(8)        not null
#  selected    :boolean          default(FALSE)
#

require 'rails_helper'

RSpec.describe Alternative, type: :model do
  
  describe 'validations' do 
		it { should validate_presence_of(:decision) }
		it { should validate_presence_of(:title) }
	end

	describe 'associations' do
		it { should belong_to(:decision) }
	end
end
