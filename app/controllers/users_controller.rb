class UsersController < ApplicationController
  def profile
    @user = current_user
    @next_mission = current_user.missions.where("date >= ? AND status IN (?)", Date.today, ['on-going', 'planned']).order(:date).first
  end

  private

  def params_user
    params.require(:user).permit(:level)
  end
end
