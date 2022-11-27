class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :user_icon, :user_introduction)
  end

end
