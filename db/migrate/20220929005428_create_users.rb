class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :UIN, null: false
      t.string :FirstName, null: false
      t.string :LastName, null: false
      t.string :PhoneNumber
      t.string :Email, null: false
      t.boolean :isAdmin
      t.string :PledgeClass
      t.string :Major
      t.string :password_digest
      #t.string :Password_confirmation

      t.timestamps
    end
  end
end
