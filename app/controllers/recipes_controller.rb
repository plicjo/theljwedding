class RecipesController < ApplicationController
  layout 'guest'

  def new
    @recipe = Recipe.new
    respond_with(@rsvp)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    respond_with @recipe, location: root_path
  end

  def index

  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :family_name, :photo, :prep_time, :cook_time, :number_of_servings, :description, :photo_cache_id, ingredients_attributes: [:id, :ingredient_description, :destroy, :_destroy])
  end
end
