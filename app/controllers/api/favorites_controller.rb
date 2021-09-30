class Api::FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: params[:user_id])

    if @favorites 
      render :show
    else
      render json: ["No favorites found"]
    end
  end
end