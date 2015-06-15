class SessionsController < ApplicationController
  def new
  end

  def create
    # this is where authentication happens.
    # first thing for authentication is to see if the db has username
    @user = User.where(username: params[:username]).first
    # the user exist and the user password is correct
    if  @user.present? && @user.authenticate(params[:password])
      #log the user in.
      session[:user_id] = @user.id
      flash[:notice] = 'YaY! welcome to the site' 
      redirect_to root_path
    else
      #something else
      flash[:alert] = 'Oops! you entered the wrong password or username.'
      render :new
    end
  end

  #logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
