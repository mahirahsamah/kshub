# frozen_string_literal: true

class Announcement < ApplicationRecord
  belongs_to :user
  def self.update_active_status(announcement)
    announcement.active = false
    announcement.save
  end
end
