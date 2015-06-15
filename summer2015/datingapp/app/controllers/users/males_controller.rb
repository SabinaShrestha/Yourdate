class User::MalesController < ApplicationController


  def index
  end

  def new 
    @user = User.new
    # if @user.save
    #   redirect_to user_path
    # else
    #   render :new
    # end
  end

  def create
    @user = User.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:usrname, :age, :gender, :bio, :contact, :password, :password_confirmation)
  end
end
