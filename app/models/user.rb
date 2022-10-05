class User < ApplicationRecord
    has_many :Announcement
    has_many :MerchLink
    has_many :Event
    has_many :Comment

    #def password=(raw)
    #    self.Password_digest = BCrypt::Password.create(raw)
    #end

    #def is_password?(raw)
    #    BCrypt::Password.new(Password_digest).is_password?(raw)
    #end
end
