class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = get_food
  end

  def new
    @food = Food.new
  end

  def create
    @food.new(food_params)
    if @food.save
      redirect_to food_path(@food)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def food_params
    params.require(:food).permit(:name, :image_url, :calories, :service_size, :unit_of_m)
  end

  def get_food
    Food.find(params[:id])
  end
end
