class Ingredient < ApplicationRecord
  validates :item, :description, :recipe_id, presence: true

  belongs_to :recipe,
    foreign_key: :recipe_id,
    class_name: :Recipe
end
