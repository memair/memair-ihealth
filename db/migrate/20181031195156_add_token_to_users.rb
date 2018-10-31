class AddTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :memair_access_token, :string
    add_column :users, :ihealth_access_token, :string
  end
end
