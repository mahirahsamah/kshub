class Comment < ApplicationRecord
    belongs_to :announcements
    belongs_to :users
end
