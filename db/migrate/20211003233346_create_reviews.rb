class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body, null: false
      t.integer :rating, null: false
      t.integer :recipe_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, [:user_id, :recipe_id], unique: true
  end
end
