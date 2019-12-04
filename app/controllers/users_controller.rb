class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  private

  def params_user
    params.require(:user).permit(:level)
  end
end
