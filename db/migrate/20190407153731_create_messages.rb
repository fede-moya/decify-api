# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :message
      t.references :user
      t.references :decision
      t.integer :likes_count
      t.integer :dislikes_count
      t.timestamps
    end
  end
end
