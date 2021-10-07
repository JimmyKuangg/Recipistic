export const signup = user => (
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: { user }
  })
)

export const getUser = userId => (
  $.ajax({
    method: 'GET',
    url: `/api/users/${userId}`
  })
)

export const getFavorites = () => (
  $.ajax({
    method: 'GET',
    url: 'api/favorites'
  })
)

export const createFavorite = favorite => (
  $.ajax({
    method: 'POST',
    url: 'api/favorites',
    data: { favorite }
  })
)

export const expungeFavorite = favoriteId => (
  $.ajax({
    method: 'DELETE',
    url: `/api/favorites/${favoriteId}`
  })
)