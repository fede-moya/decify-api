class DenormalizeAlternativeTitleOnVotes < ActiveRecord::Migration[5.2]
  def change
  	add_column :votes, :alternative_title, :string
  end
end
