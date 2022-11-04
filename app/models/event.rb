class Event < ApplicationRecord
    belongs_to :user
    belongs_to :announcement

    validates :user, presence: true
end
