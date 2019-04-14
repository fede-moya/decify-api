class AddParicipantsCountToDecisiosn < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :participants_count, :integer, default: 0, null: false
  end
end
