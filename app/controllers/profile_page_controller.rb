# frozen_string_literal: true

class ProfilePageController < ApplicationController
  before_action :authenticate_user!
  # GET /profile_page
  def index
    @user = current_user
  end

  def update; end
end
