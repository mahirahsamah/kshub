class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :EventID
      t.string :UIN
      t.string :AnnouncementID
      t.datetime :EventDate
      t.string :EventLocation
      t.string :EventTitle
      t.string :EventOrganizer

      t.timestamps
    end
  end
end
