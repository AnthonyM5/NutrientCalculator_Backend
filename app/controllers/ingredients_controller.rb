class IngredientsController < ApplicationController

    def create
        meal = meal.find_by(meal_id: params[:meal_id])
        meal.ingredients.create(food_id: params[:food_id], servings: params[:servings], portion: params[:portion])
        render json: meal
    end

end
