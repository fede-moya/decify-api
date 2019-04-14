class AddStateToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :state, :integer, default: 0, null: false
  end
end
