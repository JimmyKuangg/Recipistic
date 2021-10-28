class Api::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)

    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 401
    end
  end

  def update
    @review = Review.find_by(id: params[:review][:id] )
    if @review && @review.update(review_params)
      render :show
    else  
      render json: @review.errors.full_messages, status: 401
    end
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    if @review
      render :show
      @review.destroy
    else
      render json: ["No review found with that id"]
    end
  end
  
  private
  def review_params
    params.require(:review).permit(:body, :rating, :user_id, :recipe_id)
  end
end