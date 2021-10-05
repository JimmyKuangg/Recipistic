class Api::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)

    if @review.save!
      render :show
    else
      render json: @review.errors.full_messages
    end
  end

  def update
    @review = Review.find_by(id: params[:review][:id] )
    if @review && @review.update(review_params)
      render :show
    else  
      render json: ["Error in update review!"]
    end
  end

  private
  def review_params
    params.require(:review).permit(:body, :rating, :user_id, :recipe_id)
  end
end