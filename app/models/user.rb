class User < ApplicationRecord

    #attr_accessible :Email, :FirstName, :Password, :Password_confirmation
    #has_secure_password
    
    has_many :Announcement
    has_many :MerchLink
    has_many :Event
    has_many :Comment

    validates :Email, presence: :true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Error: Must be a valid email address."}
end
