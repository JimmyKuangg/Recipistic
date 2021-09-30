class AddColNullRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :public, true
  end
end
