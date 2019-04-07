class AddUserRefToAlternatives < ActiveRecord::Migration[5.2]
  def change
    add_reference :alternatives, :user, foreign_key: true, null: false
  end
end
