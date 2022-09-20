class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements, :id => false  do |t|
      t.integer :announcementID
      t.text :text
      t.belongs_to :User
      t.timestamps
    end
  end
end
