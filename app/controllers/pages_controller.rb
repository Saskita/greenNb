class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @plants = Plant.all
    # @plant = Plant.where()
  end

  def dashboard
    @user = current_user
    @plants = Plant.where(user: @user)
    @plant = Plant.where(user: @user)
    @my_plant_bookings = Booking.joins(:plant).where(plant: { user: @user })
    @my_bookings = Booking.where(user: @user)
  end
end
