# frozen_string_literal: true

class AddAdminToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :uin, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phonenumber, :string
    add_column :users, :pledgeclass, :string
    add_column :users, :major, :string
  end
end
