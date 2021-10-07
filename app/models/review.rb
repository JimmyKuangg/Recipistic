class Review < ApplicationRecord
  validates :rating, :body, :recipe_id, :user_id, presence: true
  validates :user_id, uniqueness: {scope: :recipe_id}
  validate :correct_rating

  def correct_rating 
    if (rating && !rating.between?(1, 5))
      render json: ["Please make your rating between 1 and 5"]
    end
  end

  belongs_to :recipe,
    foreign_key: :recipe_id,
    class_name: :Recipe

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User
end
