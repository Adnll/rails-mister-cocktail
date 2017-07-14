class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = []
    Ingredient.all.each do |ingredient|
      @ingredients << ingredient
    end
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    # binding.pry

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:cocktail, :ingredient_id, :description)
  end

end
