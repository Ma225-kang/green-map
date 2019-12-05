class MissionsController < ApplicationController
  def create
    @mission = Mission.new(mission_params)
    @place = Place.find(params[:place_id])
    @mission.place = @place
    @mission.captaingreen = current_user

    if @mission.save
      redirect_to profile_path
    else
      render 'places/show'
    end
  end

  def cancel
    @mission = Mission.find(params[:id])
    @mission.status = "cancelled"
    @mission.save
    redirect_to profile_path
  end

  private

  def mission_params
    params.require(:mission).permit(:date, :time_slot, :status)
  end
end
