class IngredientsController < ApplicationController
    before_action :get_meal

    def create
        ingredient = @meal.ingredients.create(food_id: params[:food_id], servings: params[:servings], portion: params[:portion])
        render json: ingredient
    end

    def index
        ingredients = Ingredient.all
        render json: ingredients
    end

    private

    def get_meal
        @meal = Meal.find_by(id: params[:meal_id])
    end

end