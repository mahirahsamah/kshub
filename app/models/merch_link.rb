class MerchLink < ApplicationRecord
    belongs_to :User

    validates :user, presence: true
end
