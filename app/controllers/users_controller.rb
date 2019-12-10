class UsersController < ApplicationController
  def profile
    @user = current_user
    @next_missions = current_user.missions.where("date >= ? AND status NOT IN (?) OR status = ?", Date.today, ['completed', 'cancelled'], nil).order(:date)
    if @user.points <= 0 && @user.points <= 10
      @user.level = "rookie"
    elsif @user.points > 10 && @user.points <= 50
      @user.level = "apprentice"
    elsif @user.points > 50 && @user.points <= 100
      @user.level = "champion"
    elsif @user.points > 100 && @user.points <= 200
      @user.level = "hero"
    elsif @user.points > 200
      @user.level = "legend"
    end
  end

  private

  def params_user
    params.require(:user).permit(:level)
  end
end
