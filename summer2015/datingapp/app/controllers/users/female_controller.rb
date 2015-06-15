class User::FemaleController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to user_path
    else
      render :new
    end
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
  def male_params
    params.require(:user).permit(:username, :age, :gender, :contact, :password, :password_confirmation)
  end
end
