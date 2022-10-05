class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # lookup the user in the database
    @user = User.find_by(Email: user_params[:Email])

    if @user && @user.is_password?(user_params[:Password])
      session[:user_id] = @user.id
      #cookies.encrypted.signed[:user_id] = @user.id
      redirect_to user_url(@user)
    else
      flash.now[:notice] = "Invalid email or password"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:Email, :Password)
  end

end
