# frozen_string_literal: true

class DashboardService
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def created_decisions_since_count(option)
    created_count(option, Decision)
  end

  def created_votes_since_count(option)
    created_count(option, Vote)
  end

  def created_messages_since_count(option)
    created_count(option, Message)
  end

  def finalized_decisions_since_count(option)
    Decision.joins(user: :organization).where('organizations.id' => user.organization_id).where('finalized_at >= ?', 1.send(option).ago.utc)
  end

  def pending_decisions_count
    Decision.joins(user: :organization).where('organizations.id' => user.organization_id).where(finalized_at: nil).count
  end

  private

  def created_count(option, entity)
    entity.joins(user: :organization).where('organizations.id' => user.organization_id).where("#{entity.to_s.pluralize.downcase}.created_at >= ?", 1.send(option).ago.utc).count
  end
end
