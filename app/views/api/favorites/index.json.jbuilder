@favorites.each do |favorite|
  json.set! favorite.id do
    json.extract! favorite, :id, :title, :reviews
  end
end