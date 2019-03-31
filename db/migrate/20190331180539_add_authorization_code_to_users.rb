class AddAuthorizationCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authorization_code, :string
  end
end
