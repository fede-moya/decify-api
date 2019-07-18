class DenormalizeDecisionTitleOnVotes < ActiveRecord::Migration[5.2]
  def change
  	add_column :votes, :decision_title, :string
  end
end
