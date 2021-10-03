class Step < ApplicationRecord
  validates :recipe_id, :recipe_order, :description, presence: true

  belongs_to :recipe,
    foreign_key: :recipe_id,
    class_name: :Recipe
end
