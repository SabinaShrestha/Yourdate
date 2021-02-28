class CarsController < ApplicationController
  before_action :find_car, only: [:edit, :update, :show, :destroy]

  
  def index
    @cars = Car.all 
  end
 
  def new
    @car = Car.new  
  end

  
  def create
    @car = Car.new(car_params)
    @car.save   
    if @car.save
      
      redirect_to cars_path  
    else
      
      render :new 
    end    
  end

  
  def edit
      
  end

  
  def update
    if @car.update(car_params) 
      redirect_to cars_path
    else
      render :edit
    end
  end

  
  def show
  end

  
  def destroy
    @car.destroy  
    redirect_to cars_path
  end

  private
  def car_params
    params.require(:car).permit(:name, :company)  
  end 

  private 
  def find_car
    @car = Car.find(params[:id]) 
  end 

end