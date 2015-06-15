class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.save
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def edit
    @meal = Meal.new(meal_params)
  end

  def destroy
    @car.destroy  
    redirect_to cars_path
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :calories, :restuarant)
  end
end