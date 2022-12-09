# frozen_string_literal: true

class Merch < ApplicationRecord
    def self.update_active_status(merch)
        merch.active = false
        merch.save
      end
end
