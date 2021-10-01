class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :item, null: false
      t.string :description, null: false
      t.integer :recipe_id, null: false
      t.timestamps
    end

    add_index :ingredients, :recipe_id
  end
end
