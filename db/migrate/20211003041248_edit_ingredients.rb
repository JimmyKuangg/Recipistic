class EditIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :item
  end
end
