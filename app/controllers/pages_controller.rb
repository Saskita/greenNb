class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @plants = Plant.all
    # @plant = Plant.where()
  end

  def dashboard
    @user = current_user
    @plants = Plant.where(user: @user)
  end
end
