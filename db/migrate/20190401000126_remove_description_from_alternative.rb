class RemoveDescriptionFromAlternative < ActiveRecord::Migration[5.2]
  def change
    remove_column :alternatives, :description, :string
  end
end
