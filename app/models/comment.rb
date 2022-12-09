class Comment < ApplicationRecord
  belongs_to :announcement
  belongs_to :user
  def self.update_active_status(comment)
    comment.active = false
    comment.save
  end
end
