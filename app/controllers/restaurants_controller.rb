class RestaurantsController < ApplicationController
  # GET method to get all products from database
  before_action :set_restaurant, only: [:show, :update, :edit, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  # GET method to get a product by id
  def show
    @review = Review.new
  end

  # GET method for the new product form
  def new
    @restaurant = Restaurant.new
  end

  # POST method for processing form data
  def create
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # GET method for editing a product based on id
  def edit
  end

  # PUT method for updating in database a product based on id
  def update
  end

  # DELETE method for deleting a product from database based on id
  def destroy
    @restaurant.destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  # we used strong parameters for the validation of params

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
