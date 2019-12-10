class MissionsController < ApplicationController
  before_action :set_mission, only: [:review, :complete, :cancel]

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
    @mission.status = "cancelled"
    @mission.save
  end

  def review
  end

  def complete
    @mission.update(mission_update_params)

    # calculates the points for new mission
    @mission.new_points = (perceived_effort + (@mission.place.volume * @mission.volume_left))* 10

    # update total user points after mission
    current_user.points += current_user.mission.mission_points
    current_user.save

    # update place volume with new volume left on site estimated by volonteer
    @mission.place.volume = 0
    @mission.place.volume = mission.volume_left
    @mission.save

    redirect_to profile_path
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:date, :time_slot, :status)
  end

  def mission_update_params
    params.require(:mission).permit(:mapmaster_photo, :participation_level, :participation_proof)
  end
end
