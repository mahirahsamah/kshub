# frozen_string_literal: true

class MembersController < ApplicationController
  # before_action :set_announcement, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /members
  def index
    @users = User.all
  end
end
