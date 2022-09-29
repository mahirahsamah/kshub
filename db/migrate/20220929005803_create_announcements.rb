class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :AnnouncementID
      t.text :Text
      t.string :UIN

      t.timestamps
    end
  end
end
