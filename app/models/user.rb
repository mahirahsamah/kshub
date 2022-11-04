class User < ApplicationRecord

    #attr_accessible :Email, :FirstName, :Password, :Password_confirmation
    has_secure_password #:recovery_password
    
    has_many :announcements
    has_many :MerchLink
    has_many :events
    has_many :Comment

    validates :Email, presence: :true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Error: Must be a valid email address."}
    #validates :password, presence: :true, format: {with: ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,32}$, message: "Error: Must be a valid email address."}
end
