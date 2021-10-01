class Api::FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites

    if @favorites 
      render :index
    else
      render json: ["No favorites found"]
    end
  end
end