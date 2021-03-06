class Api::UsersController < ApplicationController

  def show 
    @user = User.includes(:recipes).find_by(id: params[:id])
    
    if @user
      render :show
    else
      render json: ["No user found with that id"]
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      render :login
    else
      render json: @user.errors.full_messages, status: 401
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
