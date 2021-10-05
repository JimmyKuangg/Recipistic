class Favorite < ApplicationRecord
  validates :user_id, :recipe_id, presence: true
  validates :user_id, uniqueness: {scope: :recipe_id}

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :recipe,
    foreign_key: :recipe_id,
    class_name: :Recipe
end
