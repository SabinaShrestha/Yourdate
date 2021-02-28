class UsersController < ApplicationController
  
  before_action :find_user, only: [:edit, :update, :show, :destroy]


  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      redirect_to index_path
    else
      render :new
    end
  end

  def new
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
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :gender, :age)
    end

end
