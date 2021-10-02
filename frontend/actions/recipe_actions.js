export const FETCH_RECIPE = 'FETCH_RECIPE';
export const FETCH_ALL_RECIPES = 'FETCH_ALL_RECIPES';
import * as RecipesApiUtil from '../util/recipe_api_util'

const fetchRecipe = recipe => ({
  type: FETCH_RECIPE,
  recipe
})

const fetchAllRecipes = recipes => ({
  type: FETCH_ALL_RECIPES,
  recipes
})

export const receiveRecipe = recipeId => dispatch => (
  RecipesApiUtil.getRecipe(recipeId)
  .then(recipes => dispatch(fetchRecipe(recipes)))
)

export const receiveAllRecipes = () => dispatch => (
  RecipesApiUtil.getAllRecipes()
  .then(recipes => dispatch(fetchAllRecipes(recipes)))
)