class Event < ApplicationRecord
    belongs_to :User
    belongs_to :Announcement

    validates :user, presence: true
end
