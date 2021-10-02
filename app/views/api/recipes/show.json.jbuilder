json.extract! @recipe, :id, :title, :body, :servings, :public
json.photoUrl url_for(@recipe.photo);
json.ingredients do 
  @recipe.ingredients.each.with_index do |ingredient, idx|
    json.set! idx+1 do
      json.extract! ingredient, :id, :item, :description
    end
  end
end
