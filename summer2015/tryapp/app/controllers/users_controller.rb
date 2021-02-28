class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
       session[:user_id] = @user.id
      redirect_to(root_path, notice: 'YAY! welcome!!!!')
    else
      flash[:alter] = "boo. that didn't work"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

   private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :age, :gender, :bio, :contact)
  end


end