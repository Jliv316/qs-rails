class Api::V1::MealsController < ApplicationController

  def index
    meals = Meal.all

    render json: meals, status: 200
  end

  def show
    meal = Meal.find(params[:meal_id])

    render json: meal, status: 200
  end

  def create
    food = Food.find(params[:id])
    meal = Meal.find(params[:meal_id])
    MealFood.create(meal_id: params[:meal_id], food_id: params[:id])
    message = {"message": "Successfully added #{food.name} to #{meal.name}"}
    render json: message, status: 201
  end

  def destroy
    food = Food.find(params[:id])
    meal = Meal.find(params[:meal_id])
    meal_food = MealFood.find_by(meal_id: params[:meal_id], food_id: params[:id])
    meal_food.destroy
    message = {"message": "Successfully removed #{food.name} to #{meal.name}"}
    render json: message, status: 204
  end
end