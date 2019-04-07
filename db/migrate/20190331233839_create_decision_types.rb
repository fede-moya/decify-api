class CreateDecisionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :decision_types do |t|
      t.string :name
    end
  end
end
