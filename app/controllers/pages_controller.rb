class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @places = Place.all
    @markers = @places.map do |place|
      if place.volume != 0
        {
          lat: place.latitude,
          lng: place.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
          image_url: helpers.asset_url('icons/red_mapmarker_icon.png')
        }
      else
        {
          lat: place.latitude,
          lng: place.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
          image_url: helpers.asset_url('icons/green_mapmarker_icon.png')
        }
      end
    end
  end
end
