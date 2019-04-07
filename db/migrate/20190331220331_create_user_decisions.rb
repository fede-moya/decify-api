class CreateUserDecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_decisions do |t|
      t.references :user, foreign_key: true, null: false
      t.references :decision, foreign_key: true, null: false
      t.timestamps
    end
  end
end
