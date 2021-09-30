@favorites.each do |favorite|
  json.set! favorite.id do
    json.extract! favorite, :id, :recipe_id
  end
end