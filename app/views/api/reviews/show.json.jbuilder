json.extract! @review, :id, :body
json.user @review.user.username
json.reviewer_id @review.user.id
json.rating @review.rating

reviews = @review.recipe.reviews
if reviews.length != 0
  sum = 0
  reviews.each do |review|
    sum += review.rating
  end
  avg = (sum / (reviews.length * 1.0))
  json.average avg
end