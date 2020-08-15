class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  # def show
  #   @restaurant = Restaurant.find(params[:id])
  #   @review = Review.new
  # end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   if @restaurant.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render "new"
  #   end
  # end

end
