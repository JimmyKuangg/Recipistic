json.extract! @recipe, :id, :title, :body, :servings, :public
# json.photoUrl url_for(@recipe.photo);
json.ingredients do 
  @recipe.ingredients.each.with_index do |ingredient, idx|
    json.set! idx+1 do
      json.extract! ingredient, :id, :description
    end
  end
end

json.steps do
  @recipe.steps.each.with_index do |step, idx|
    json.set! idx+1 do
      json.extract! step, :id, :recipe_order, :description
    end
  end
end

