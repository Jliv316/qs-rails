class Api::V1::FoodsController < ApplicationController
  def index
    foods = Food.all
    
    render json: foods, status: 200
  end

  def show
    food = Food.find(params[:id])

    render json:food, status: 200
  end

  def create
    food = Food.create(food_params)

    render json: food, status: 201
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
    food.save
    render json:food, status: 200
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy

    render body: nil, status: :no_content
  end

  private
  def food_params
    params.require(:food).permit(:name, :calories)
  end
end