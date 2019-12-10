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

    progress = (@mission.place.volume - @mission.volume_left)
    if progress < 0
      @mission.mission_points = (@mission.perceived_effort - progress) * 10
    else
      @mission.mission_points = (@mission.perceived_effort + progress) * 10
    end

    @mission.save!

    # update total user points after mission
    current_user.points += @mission.mission_points
    current_user.save

    # update place volume with new volume left on site estimated by volonteer
    @mission.place.volume = @mission.volume_left
    @mission.place.save


    redirect_to profile_path
  end

  def congrats_on_completion

  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:date, :time_slot, :status)
  end

  def mission_update_params
    params.require(:mission).permit(:mapmaster_photo, :perceived_effort, :participation_proof, :volume_)
  end
end
