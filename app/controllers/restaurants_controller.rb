class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show, :edit, :update, :destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end


  def edit
    # recupere le resto à éditer
    # affiche le formulaire
  end

  def update
    # recupere le resto
    # update les params
    @restaurant.update(restaurant_params)
    # je sauve
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def destroy
    # on recupere le resto
    # On le destroy
    @restaurant.destroy
    # on redirect vers la liste
    redirect_to restaurants_path
  end


  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :star)
  end

end
