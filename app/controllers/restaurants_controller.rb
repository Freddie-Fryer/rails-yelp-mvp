class RestaurantsController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index # all tasks
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show; end

  

  private

  def restaurant_params
    params.require(:name).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
