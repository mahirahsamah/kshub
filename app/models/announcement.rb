class Announcement < ApplicationRecord
    belongs_to :User
    has_one :Event, through: :User
    has_many :Comment, through: :User

    validates :user, presence: true
end
