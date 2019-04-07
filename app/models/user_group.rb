# == Schema Information
#
# Table name: user_groups
#
#  id       :bigint(8)        not null, primary key
#  user_id  :bigint(8)        not null
#  group_id :bigint(8)        not null
#

class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
end
