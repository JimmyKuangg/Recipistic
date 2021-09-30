class Edit < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :public
    add_column :recipes, :public, :boolean
  end
end
