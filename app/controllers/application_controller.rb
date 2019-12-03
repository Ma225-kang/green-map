class ApplicationController < ActionController::Base
  skip_before_action :authenticate_user!, only: [:home, :places, :place]

  def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :city, :zip_code, :country, :avatar])
    end
end
