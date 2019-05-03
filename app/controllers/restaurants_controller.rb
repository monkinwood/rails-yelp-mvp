class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurants.all
  end

  def show
    @restaurant = Restaurant.find(params: [:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params: [:id])
    @restaurant.save
    redirect_to resturants_path(@restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params: [:id])
  end

  def update
    @restaurant = Restaurant.find(params: [:id])
    @restaurant = Restaurant.update(params: [:id])
  end

  def destroy
    @restaurant = Restaurant.find(params: [:id])
    @restaurant.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :reviews)
  end
end
