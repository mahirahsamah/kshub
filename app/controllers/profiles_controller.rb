class ProfilesController < ApplicationController
    before_action :require_user_logged_in!

    def edit

    end

    def update
        if Current.user.update(profile_params)
            redirect_to root_path, notice: "Profile successfully updated."
        else
            render :edit
        end
    end

    private
    def profile_params
        params.require(:user).permit(:UIN, :FirstName, :LastName, :PhoneNumber, :Email, :isAdmin, :PledgeClass, :Major, :password, :password_confirmation)
    end
end