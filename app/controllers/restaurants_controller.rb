class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  protect_from_forgery prepend: true


  def index
  @restaurants = Restaurant.all
  end

  def edit
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurants.save
        format.html { redirect_to @restaurants, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @restaurants }
      else
        format.html { render :new }
        format.json { render json: @restaurants.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  @restaurant = Restaurant.new
  end

  def show
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @restaurant.destroy
        format.html { redirect_to restaurants_path, notice: 'Review was successfully updated.' }
        format.json { render :index, status: :ok }
      end
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :picture, :rating)
    end
end
