#
class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    # no need for app/views/plants/destroy.html.erb
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :availability, :price)
  end
end
