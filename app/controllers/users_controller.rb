# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = if params[:approved] == 'false'
               User.where(approved: false)
             else
               User.all
             end
  end
end
