class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    
    end
    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def new
        @restaurant = Restaurant.new 
    end

     # GET /restaurants/1/edit
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

    private
  
    def find_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

  end
