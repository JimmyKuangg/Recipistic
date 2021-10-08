class RemovePublicCol < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :public
  end
end
