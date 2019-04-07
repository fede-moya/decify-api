class CreateDecisionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :decision_tags do |t|
      t.references :decision, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
