class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.create(user_params)
    redirect_to user_path(@user)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :phone, :birthday)
  end
end
