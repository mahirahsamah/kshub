# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user

  def self.update_active_status(event)
    event.active = false
    event.save
  end

end
