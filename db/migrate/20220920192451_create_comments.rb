class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, :primary_key => :commentID do |t|
      t.belongs_to :Announcement
      t.belongs_to :User
      t.integer :commentID
      t.text :text
  
      t.timestamps
    end
  end
end
