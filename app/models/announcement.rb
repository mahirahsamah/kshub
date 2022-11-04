class Announcement < ApplicationRecord
    belongs_to :user
    has_one :event, through: :user
    has_many :comment, through: :user

    validates :user, presence: true
end
