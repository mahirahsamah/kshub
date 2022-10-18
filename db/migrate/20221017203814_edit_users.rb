class EditUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :Password, :string
    remove_column :users, :Password_confirmation, :string
  end
end
