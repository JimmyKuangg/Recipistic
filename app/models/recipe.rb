class Recipe < ApplicationRecord
  validates :title, :body, :servings, :user_id, presence: true
  
  has_one_attached :photo
  
  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  has_many :ingredients,
    foreign_key: :recipe_id,
    class_name: :Ingredient,
    dependent: :destroy
  
  has_many :steps,
    foreign_key: :recipe_id,
    class_name: :Step,
    dependent: :destroy
  
  has_many :reviews,
    foreign_key: :recipe_id,
    class_name: :Review,
    dependent: :destroy

  has_many :reviewers,
    through: :reviews,
    source: :user
    
  has_many :favorites,
    foreign_key: :recipe_id,
    class_name: :Favorite,
    dependent: :destroy
end
