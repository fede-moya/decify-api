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

require 'rails_helper'

RSpec.describe Organization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
