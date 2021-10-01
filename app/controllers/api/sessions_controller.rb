class Api::SessionsController < ApplicationController
  
  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user
      login!(@user)
      render '/api/users/login'
    else
      render json: ["Invalid username or password!"], status: 401
    end
  end

  def destroy
    if current_user.nil?
      render json: {message: "Something went wrong"}, status: 404
    else
      logout!
    end
  end
end