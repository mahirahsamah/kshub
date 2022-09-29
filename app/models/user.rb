class User < ApplicationRecord
    has_many :Announcement
    has_many :MerchLink
    has_many :Event
    has_many :Comment
end
