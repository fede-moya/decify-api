class AddAlternativesCountToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :alternatives_count, :integer, default: 0
  end
end
