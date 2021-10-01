class Recipe < ApplicationRecord
  validates :title, :body, :servings, :user_id, presence: true
  validates :public, inclusion: { in: [true, false] }
  
  has_one_attached :photo
  
  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  has_many :ingredients,
    foreign_key: :recipe_id,
    class_name: :Ingredient,
    dependent: :destroy
end
