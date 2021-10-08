@favorites.each do |favorite|
  json.set! favorite.id do
    json.extract! favorite, :id, :title
    json.author favorite.user.username
    json.photoUrl url_for(favorite.photo)
  end
end
