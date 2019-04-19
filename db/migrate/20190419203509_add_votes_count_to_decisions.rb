class AddVotesCountToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :votes_count, :integer, default: 0
  end
end
