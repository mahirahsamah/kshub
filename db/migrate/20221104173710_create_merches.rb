# frozen_string_literal: true

class CreateMerches < ActiveRecord::Migration[6.1]
  def change
    create_table :merches do |t|
      t.string :name
      t.float :price
      t.string :link

      t.timestamps
    end
  end
end
