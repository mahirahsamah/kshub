class Event < ApplicationRecord
    belongs_to :User
    belongs_to :Announcement
end
