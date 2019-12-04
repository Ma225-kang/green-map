class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params_places)
    @place.status = "new"
    @place.mapmaster = current_user
    @place.save

    redirect_to place_path(@place)
  end

private

  def params_places
    params_places = params.require(:place).permit(:address, :volume, :mapmaster_photo)
  end
end
