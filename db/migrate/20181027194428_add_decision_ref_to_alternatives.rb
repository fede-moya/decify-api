class AddDecisionRefToAlternatives < ActiveRecord::Migration[5.2]
  def change
  	add_reference :alternatives, :decision, foreign_key: true
  end
end
