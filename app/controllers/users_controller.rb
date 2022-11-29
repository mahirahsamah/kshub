# frozen_string_literal: true

class UsersController < ApplicationController
    def index
        if params[:approved] == "false"
            @users = User.where(approved: false)
        else
            @users = User.all
        end
    end
    
    def edit
        @user = User.find(params[:id])
      end
   
   
      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to members_path
        else
          render 'edit'
        end
      end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to members_path
    end

    #private

    def user_params
        params.required(:user).permit(:email, :uin, :firstname, :lastname, :phonenumber, :pledgeclass, :major, :username, :approved, :admin)
    end

end
