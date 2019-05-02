# frozen_string_literal: true

class GraphService
  attr_accessor :organization

  def initialize(organization)
    @organization = organization
  end

  def decisions_vs_time(state = nil)
    decisions = if state.present?
                  organization.decisions.where(state: state).distinct.all.group_by { |m| m.created_at.beginning_of_month }
                else
                  organization.decisions.distinct.all.group_by { |m| m.created_at.beginning_of_month }
                end

    records_count_vs_time decisions
  end

  def messages_vs_time
    messages = organization.messages.distinct.all.group_by { |m| m.created_at.beginning_of_month }
    records_count_vs_time messages
  end

  def votes_vs_time
    votes = organization.votes.distinct.all.group_by { |m| m.created_at.beginning_of_month }
    records_count_vs_time votes
  end

  private

  def records_count_vs_time(records)
    dates_with_counts = []
    dates = (organization.created_at.beginning_of_month.to_date..Time.now.beginning_of_month.to_date).select { |date| date.day == 1 }
    dates.each do |date|
      hash = {}
      hash["#{date.month}-#{date.year}"] = 0
      dates_with_counts.push hash
    end
    
    records.each do |key, value|
      date = "#{key.month}-#{key.year}"
      dates_with_counts.each do |date_with_count|
        date_with_count[date] = value.count if date_with_count[date].present?
      end
    end

    dates_with_counts
  end
end
