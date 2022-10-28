class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :CommentID
      t.text :Text
      t.string :AnnouncementID
      t.string :UIN

      t.timestamps
    end
  end
end
