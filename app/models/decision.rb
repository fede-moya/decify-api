# frozen_string_literal: true
# == Schema Information
#
# Table name: decisions
#
#  id                 :bigint(8)        not null, primary key
#  title              :string
#  description        :text
#  finalized_at       :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint(8)
#  decision_type_id   :bigint(8)
#  decision_type_name :string
#  decision_type_code :integer
#  state              :integer          default("pending"), not null
#  messages_count     :integer          default(0), not null
#  participants_count :integer          default(0), not null
#  votes_count        :integer          default(0)
#  alternatives_count :integer          default(0)
#

class Decision < ApplicationRecord
  belongs_to :user
  belongs_to :decision_type
  has_many :alternatives
  has_many :votes, through: :alternatives
  has_many :user_decisions
  has_many :users, through: :user_decisions
  has_many :messages
  has_many :decision_tags
  has_many :tags, through: :decision_tags

  enum state: %i[pending finalized]

  validates :title, presence: true
  validates :user, presence: true
  validates :decision_type, presence: true

  after_create :associate_owner
  after_update :denormalize_title, if: :saved_change_to_title?

  def send_notification
    NotificationSenderJob.perform_later('decision_created', id.to_s)
  end

  def denormalize
    self.decision_type_name = decision_type.name
    self.decision_type_code = decision_type.code
  end

  def associate_owner
    UserDecision.create(user: user, decision: self)
  end

  def finalize
    # when decision type  is 50% + 1 of the votes
    if decision_type.code.eql?(0) && (alternatives.map(&:votes).map(&:count).max > users.count / 2)
      alternative = Alternative.new
      alternatives.each { |a| alternative = a if a.votes.count > alternative.votes.count }
      alternative.update(selected: true)
      self.finalized_at = Time.new.to_time
      self.state = :finalized
      save
      NotificationSenderJob.perform_later('decision_finalized', id.to_s)
    end
  end

  def increment_messages_count
    self.messages_count += 1
    save
  end

  def decrement_messages_count
    self.messages_count -= 1
    save
  end

  def increment_participants_count
    self.participants_count += 1
    save
  end

  def decrement_participants_count
    self.participants_count -= 1
    save
  end

  def set_votes_count_from_alternatives
    self.votes_count = alternatives.sum(:votes_count)
    save
  end

  def set_alternatives_count_from_alternatives
    self.alternatives_count = alternatives.count
    save
  end

  def denormalize_title
    messages.update_all(decision_title: title)
    votes.update_all(decision_title: title)
  end
end
