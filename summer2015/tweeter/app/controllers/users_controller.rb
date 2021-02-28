class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # this is where we can set the setting for the email confirmation, password reset send phone message for it.
      session[:user_id] = @user.id 
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :bio)
  end
end
