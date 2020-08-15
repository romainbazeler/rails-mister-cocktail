class CocktailsController < ApplicationController

  # GET "cocktails"
  def index
    @cocktails = Cocktail.all
  end

  # GET "cocktails/42"
  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # if @restaurant.save
      #   redirect_to restaurant_path(@restaurant)
      # else
      #   render "new"
      # end

    redirect_to cocktails_path(@cocktail)
  end


  private
 #cannot save without strong parmas
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
 