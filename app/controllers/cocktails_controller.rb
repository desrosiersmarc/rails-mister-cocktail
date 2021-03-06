class CocktailsController < ApplicationController
  # before_action: :find_cocktail, only: [:show, :edit]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    # @cocktail
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, photos:[])
  end
end
