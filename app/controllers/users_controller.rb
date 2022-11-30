class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show,:profile]
  def index
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:user_name,:user_icon))
      flash[:notice] = "ユーザー情報を更新しました"
      redirect_to root_path
    else
      flash[:notice] = "ユーザー情報を更新できませんでした。"
      render "profile"
    end
  end

  def profile
    @user = current_user
  end

end
