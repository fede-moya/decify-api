class DenormalizeDeicionTitleOnMessages < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :decision_title, :string
  end
end
