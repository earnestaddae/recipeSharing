class FoodPreferencesController < ApplicationController
  def show
    @food_preference = FoodPreference.find(params[:id])
    @recipes = @food_preference.recipes.all
  end
end
