# frozen_string_literal: true

class AddSelectedToAlternatives < ActiveRecord::Migration[5.2]
  def change
    add_column :alternatives, :selected, :boolean, default: false
  end
end
