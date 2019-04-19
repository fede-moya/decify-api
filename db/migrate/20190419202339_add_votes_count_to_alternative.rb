class AddVotesCountToAlternative < ActiveRecord::Migration[5.2]
  def change
    add_column :alternatives, :votes_count, :integer, default: 0
  end
end
