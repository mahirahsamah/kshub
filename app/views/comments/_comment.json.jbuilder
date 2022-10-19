json.extract! comment, :id, :CommentID, :Text, :AnnouncementID, :UIN, :created_at, :updated_at
json.url comment_url(comment, format: :json)
