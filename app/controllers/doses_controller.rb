class DosesController < ApplicationController
  
  # GET "cocktails/42/doses/new"
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST "cocktails/42/doses"
  def create
    @dose = Dose.new(dose_params)
     # we need `cocktail_id` to associate dose with corresponding cocktail
     @cocktail = Cocktail.find(params[:cocktail_id])
     @dose.cocktail = @cocktail
     @dose.save
     redirect_to cocktail_path(@cocktail)
  end
  # DELETE "doses/25"


  private
 #cannot save without strong parmas
  def dose_params
    params.require(:dose).permit(:description)
  end

end
 