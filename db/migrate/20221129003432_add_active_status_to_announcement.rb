class AddActiveStatusToAnnouncement < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :active, :boolean, default: true
  end
end
