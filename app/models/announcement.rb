class Announcement < ApplicationRecord
    self.primary_key = "announcementID"
    belongs_to :User
    belongs_to :User,foreign_key: "UIN"
    has_many :Comment

end
