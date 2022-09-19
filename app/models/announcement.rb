class Announcement < ApplicationRecord
    belongs_to :User
    belongs_to :User,foreign_key: "UIN"
    has_many :Comment

end
