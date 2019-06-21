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

class Organization < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :groups
  has_many :decisions, through: :users
  has_many :messages, through: :users
  has_many :votes, through: :users
  has_one_attached :logo

  validates :name, presence: true, uniqueness: true
  validates :user, presence: true

  after_create :update_owner

  def update_owner
    user.update(organization: self)
  end

  def logo_url
    AttachmentUrlService.url(logo) if logo.attached?
  end
end
