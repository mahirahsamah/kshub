class Comment < ApplicationRecord
    self.primary_key = "commentID"

    belongs_to :User
    belongs_to :Announcement
    belongs_to :User,foreign_key: "UIN"
    belongs_to :Announcement,foreign_key: "announcementID"
end
