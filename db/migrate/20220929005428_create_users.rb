class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :UIN
      t.string :FirstName
      t.string :LastName
      t.string :PhoneNumber
      t.string :Email
      t.boolean :isAdmin
      t.string :PledgeClass
      t.string :Major
      t.string :Password
      t.string :Password_confirmation

      t.timestamps
    end
  end
end
