class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
    authorize(@plant)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize(@booking)
    @plant = Plant.find(params[:plant_id])
    @booking.plant = @plant
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      @plant = Plant.find(params[:plant_id])
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @plant = @booking.plant
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @plant = @booking.plant
    @booking.user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :totalprice)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
