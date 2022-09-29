json.extract! announcement, :id, :AnnouncementID, :Text, :UIN, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
