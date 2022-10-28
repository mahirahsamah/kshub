class Comment < ApplicationRecord
    belongs_to :Announcement
    belongs_to :User

    validates :user, presence: true
end
