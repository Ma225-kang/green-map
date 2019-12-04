class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def create
  end

private

  def params_places
    params.require(:place).permit(:address, :volume, :status, :mapmaster_photo)
  end
end
