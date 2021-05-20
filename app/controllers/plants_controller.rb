class PlantsController < ApplicationController
  before_action :set_plant, only: %i[ show edit update destroy ]

  def index
    @plants = policy_scope(Plant)

    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude
      }
    end
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plants = policy_scope(Plant)
    @plant = Plant.new(plant_params)
    authorize @plant
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render "plants/index"
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

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def plant_params
    params.require(:plant).permit(:name, :address, :description, :availability, :price, photos: [])
  end
end

  # <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url('<%= cl_image_path @article.photo.key, height: 300, crop: :fill %>')">
  #   Cool article
  # </div>
