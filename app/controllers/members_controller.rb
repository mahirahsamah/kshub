class MembersController < ApplicationController
    before_action :authenticate_user!
    # GET /members
    def index
      @users = User.all
      puts(@users)
    end

    def update
    end

    def show
    end

    # Custom path to edit the active status of a member to remove them from the roster
    def set_active_status
      @user = User.find(params[:id])
      User.update_active_status(@user)
      redirect_to members_path
    end
end