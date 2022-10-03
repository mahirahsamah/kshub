class Comment < ApplicationRecord
    belongs_to :Announcement

    validates :user, presence: true
end
