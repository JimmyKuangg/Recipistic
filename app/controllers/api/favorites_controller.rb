class Api::FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorite_recipes

    if @favorites 
      render :index
    else
      render json: ["No favorites found"]
    end
  end
end