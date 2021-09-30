class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :servings, null: false
      t.integer :user_id, null: false 
      t.timestamps
    end

    add_index :recipes, :user_id
  end
end
