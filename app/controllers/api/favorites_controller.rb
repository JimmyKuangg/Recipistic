class Api::FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorite_recipes

    if @favorites 
      render :index
    else
      render json: ["No favorites found"]
    end
  end

  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save!
      render :show
    else
      render json: ["Unable to create favorite!"]
    end
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])

    if @favorite
      @favorite.destroy
    else
      render json: ["No favorite found"]
    end
  end
  
  private
  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end