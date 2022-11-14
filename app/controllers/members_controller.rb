class MembersController < ApplicationController
    before_action :authenticate_user!
    # GET /members
    def index
      @users = User.all
      puts(@users)
    end

end