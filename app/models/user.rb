class User < ApplicationRecord
    has_many :MerchLink
    has_many :Announcements
    has_many :Comment through :Announcement
    # belongs_to :typeCOmp,foreign_key: "typeCOmp_id"
end
