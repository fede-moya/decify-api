# frozen_string_literal: true
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

class Alternative < ApplicationRecord
  belongs_to :decision
  belongs_to :user, optional: true
  has_many :votes

  validates :title, presence: true

  before_create :set_user

  def set_user
    self.user = decision.user unless user.present?
  end
end
