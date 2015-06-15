class Admin::HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to admin_houses_path
    else
      render :new
    end
  end

  def new
    @house = House.new
  end

  def edit
     @house = House.find(params[:id])  # if this didn't work it will display an error 404. (page not found) error
  end

  def show
    @house = House.find(params[:id])
  end
  def update
    @house = House.find(params[:id])
  
    if @house.update(house_params)
      redirect_to admin_houses_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def house_params      
    params.require(:house).permit(:squareft, :street, :city, :state, :zipcode, :bedrooms, :bathrooms, :price, :description)      # strong params
  end

end

    