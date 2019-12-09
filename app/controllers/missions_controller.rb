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

    current_user.points += @mission.place.volume * @mission.participation_level
    current_user.save
    # attention updated directly from the completion form
    # @mission.place.volume = updated
    @mission.place.save

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
