json.extract! event, :id, :EventID, :UIN, :AnnouncementID, :EventDate, :EventLocation, :EventTitle, :EventOrganizer, :created_at, :updated_at
json.url event_url(event, format: :json)
