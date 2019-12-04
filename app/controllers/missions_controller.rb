class MissionsController < ApplicationController

  def create
    @mission = Mission.new(mission_params)
    @place = Place.find(params[:place_id])
    @mission.place = @place
    @mission.captaingreen = current_user

    if @mission.save
      redirect_to current_user_profile_path
    else
      render 'places/show'
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:date, :time_slot)
  end

end
