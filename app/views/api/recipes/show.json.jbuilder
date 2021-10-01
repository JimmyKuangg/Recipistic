json.extract! @recipe, :id, :title, :body, :servings, :public

json.ingredients do 
  @ingredients.each.with_index do |ingredient, idx|
    json.set! idx+1 do
      json.extract! ingredient, :id, :item, :description
    end
  end
end
