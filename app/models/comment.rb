class Comment < ApplicationRecord
    belongs_to :announcement
    belongs_to :user

    validates :user, presence: true
end
