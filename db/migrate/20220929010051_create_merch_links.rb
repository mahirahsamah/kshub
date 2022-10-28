class CreateMerchLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :merch_links do |t|
      t.string :LinkID
      t.text :LinkDescription
      t.string :UIN

      t.timestamps
    end
  end
end
