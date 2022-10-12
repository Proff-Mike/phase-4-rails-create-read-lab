class PlantsController < ApplicationController

  wrap_parameters format: []

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plants = Plant.find_by(id: params[:id])
    render json: plants
  end

  def create
    plants = Plant.create(plant_params)
    render json: plants, status: :created
  end 

  private
   #all methods below here are private

   def plant_params
    params.permit(:name, :image, :price)
   end
end
