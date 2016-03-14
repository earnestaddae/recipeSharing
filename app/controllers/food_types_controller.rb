class FoodTypesController < ApplicationController
  def show
    @food_type = FoodType.find(params[:id])
    @recipes = @food_type.recipes.all
  end
end
