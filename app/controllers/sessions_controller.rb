class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(Email: params[:Email])

        if user.present? && user.authenticate([params[:Password]])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully."
        else
            flash[:alert] = "Error: invalid email or password."
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Successfully logged out"
    end
end