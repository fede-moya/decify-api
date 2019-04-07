# frozen_string_literal: true

class AddDecisionTypeNameToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :decision_type_name, :string
    add_column :decisions, :decision_type_code, :integer
  end
end
