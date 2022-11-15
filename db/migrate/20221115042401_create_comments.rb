class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :announcements
      t.references :user, null: false, foreign_key: true
      t.string :comment
      t.string :announcement_id
      t.timestamps
    end
  end
end
