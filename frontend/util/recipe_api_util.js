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

export const editReview = review => (
  $.ajax({
    method: 'PATCH',
    url: '/api/review',
    data: {review}
  })
)

export const createReview = review => (
  $.ajax({
    method: 'POST',
    url: '/api/review',
    data: { review }
  })
)