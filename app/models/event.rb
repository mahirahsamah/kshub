class Event < ApplicationRecord
    belongs_to :User

    validates :user, presence: true
end
