class Ingredient < ApplicationRecord
  validates :description, :recipe_id, presence: true

  belongs_to :recipe,
    foreign_key: :recipe_id,
    class_name: :Recipe
end
