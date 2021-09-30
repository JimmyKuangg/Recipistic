class Api::RecipesController < ApplicationController

  def index
    if (params[:user_id])
      @recipes = Recipe.where(user_id: params[:user_id]).where(public: true)
    else
      @recipes = Recipe.all.where(public: true)
    end

    if @recipes
      render :show
    else
      render json: ["No recipes found"]
    end
  end

end