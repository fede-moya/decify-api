class AddDecisionTypeNameToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :decision_type_name, :string
  end
end
