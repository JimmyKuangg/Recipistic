@recipes.each do |recipe|
  json.set! recipe.id do
    json.extract! recipe, :id, :title
    
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
