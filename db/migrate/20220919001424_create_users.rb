class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, :primary_key => :UIN do  |t|
      t.integer :UIN
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :email
      t.string :userType
      t.string :major
      t.string :password
      # t.belongs_to :typeCOmpany
      t.timestamps
    end
  end
end
