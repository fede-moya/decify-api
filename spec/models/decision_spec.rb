# == Schema Information
#
# Table name: decisions
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

require 'rails_helper'

RSpec.describe Decision, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
