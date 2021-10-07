@favorites.each do |favorite|
  json.set! favorite.id do
    json.extract! favorite, :id, :title
    json.author favorite.user.username
  end
end
