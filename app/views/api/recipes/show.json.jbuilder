@recipes.each do |recipe|
  json.set! recipe.id do 
    json.extract! recipe, :id, :title, :body, :servings, :public
  end
end
