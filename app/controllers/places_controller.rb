class PlacesController < ApplicationController

  def index
    @places = Places.all
  end

  def show
    @places = Places.find(params[:id])
  end

  def create
  end

private

  def params_places
    #params_places = permit()
  end
end
