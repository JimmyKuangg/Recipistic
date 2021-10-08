json.extract! @user, :id, :username, :bio

json.recipes do 
  @user.recipes.each.with_index do |recipe, idx|
    json.set! recipe.id do 
      json.extract! recipe, :id, :title, :body, :servings
      json.photoUrl url_for(recipe.photo)

      reviews = recipe.reviews
      json.numReviews reviews.length
      if reviews.length != 0
        sum = 0
        reviews.each do |review|
          sum += review.rating
        end
        avg = (sum / (reviews.length * 1.0))
        json.average avg
      end
    end
  end
end
