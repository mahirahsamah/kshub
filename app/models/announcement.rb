class Announcement < ApplicationRecord
    belongs_to :User
    has_one :Event 
    has_many :Comment, through: :User

    validates :user, presence: true
end
