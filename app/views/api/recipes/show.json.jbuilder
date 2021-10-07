json.extract! @recipe, :id, :title, :body, :servings, :public
# json.photoUrl url_for(@recipe.photo);

#Average rating
if @recipe.reviews.length != 0
  sum = 0
  @recipe.reviews.each do |review|
    sum += review.rating
  end
  avg = (sum / (@recipe.reviews.length * 1.0))
  json.average avg
end

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

json.author @recipe.user.username

json.reviews do
  @recipe.reviews.each do |review|
    json.set! review.id do
      json.extract! review, :id, :body, :rating
      json.user review.user.username
      json.reviewer_id review.user.id
    end
  end
end

json.user_favorites do
  current_user.favorites.each do |favorite|
    json.set! favorite.id do
      json.extract! favorite, :id, :recipe_id
    end
  end
end