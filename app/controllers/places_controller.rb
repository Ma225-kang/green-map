class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    @places = Place.all
    @places = @places.order("updated_at DESC")
  end

  def show
    @place = Place.find(params[:id])
    @mission = Mission.new
  end

  def new
    @place = Place.new
  end

  def create

    binding.pry
    # COOKIE STUFF
    # if cookie is a hash
    @place.longitude = cookies[:longitude]
    @place.latitude = cookies[:latitude]
    # if cookie stored in JSON
    coordinates = JSON.parse(cookies[:lat_lon])
    # if cookies is a table
    @longitude = coordinates[0]
    @latitude = coordinates[1]
    # delete cookie after usage
    # document.cookie = "latitude=; longitude=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";



    @place = Place.new(params_places)
    @place.status = "new"
    @place.mapmaster = current_user

    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def geolocate_user
    p cookies[:latitude]
    p cookies[:longitude]
    @markers = [{lat: cookies[:latitude], lng: cookies[:longitude]}]
  end

  private

  def params_places
    params.require(:place).permit(:volume, :mapmaster_photo, :latitude, :longitude, trashes_on_site: [])
  end
end
