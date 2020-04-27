class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
    :name,
    ingredient_attributes :[
      :ingredient_1,
      :ingredient_2
      ]
    )
end
