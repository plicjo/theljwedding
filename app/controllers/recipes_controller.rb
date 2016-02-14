class RecipesController < ApplicationController
  layout 'cookbook'

  def new
    @recipe = Recipe.new
    respond_with(@rsvp)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if verify_recaptcha(model: @recipe) && @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :family_name, :photo, :prep_time, :cook_time, :number_of_servings, :description, :photo_cache_id, ingredients_attributes: [:id, :ingredient_description, :_destroy], recipe_steps_attributes: [:id, :step_description, :_destroy])
  end
end
