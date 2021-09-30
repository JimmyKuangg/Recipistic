export const getAllRecipes = () => (
  $.ajax({
    method: 'GET',
    url: '/api/recipes'
  })
)

export const getRecipes = userId => (
  $.ajax({
    method: 'GET',
    url: `/api/users/${userId}/recipes`
  })
)