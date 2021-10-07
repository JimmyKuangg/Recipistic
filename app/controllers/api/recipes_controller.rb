class Api::RecipesController < ApplicationController

  def index
    if (params[:user_id])
      @recipes = Recipe.where(user_id: params[:user_id]).where(public: true)
    else
      @recipes = Recipe.all.where(public: true)
    end

    if @recipes
      render :index
    else
      render json: ["No recipes found"]
    end
  end

  def show
    @recipe = Recipe.includes(:user, :ingredients, :steps, :reviewers).find_by(id: params[:id])
    
    if @recipe
      render :show
    else
      render json: ["No recipe found with that id"]
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save!
      render :show
    else
      render json: @recipe.errors.full_messages
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :body, :servings, :user_id, :public)
  end
end