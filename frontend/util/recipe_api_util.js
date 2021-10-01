export const getAllRecipes = () => (
  $.ajax({
    method: 'GET',
    url: '/api/recipes'
  })
)

export const getRecipe = recipeId => (
  $.ajax({
    method: 'GET',
    url: `/api/recipes/${recipeId}`
  })
)