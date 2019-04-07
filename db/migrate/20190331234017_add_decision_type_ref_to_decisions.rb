class AddDecisionTypeRefToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :decisions, :decision_type, foreign_key: true
  end
end
