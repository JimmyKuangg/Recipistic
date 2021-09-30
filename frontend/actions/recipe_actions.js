export const FETCH_RECIPES = 'FETCH_RECIPES';
export const FETCH_ALL_RECIPES = 'FETCH_ALL_RECIPES';
import * as RecipesApiUtil from '../util/recipe_api_util'

const fetchRecipes = recipes => ({
  type: FETCH_RECIPES,
  recipes
})

const fetchAllRecipes = recipes => ({
  type: FETCH_ALL_RECIPES,
  recipes
})

export const receiveRecipes = userId => dispatch => (
  RecipesApiUtil.getRecipes(userId)
  .then(recipes => dispatch(fetchRecipes(recipes)))
)

export const receiveAllRecipes = () => dispatch => (
  RecipesApiUtil.getAllRecipes()
  .then(recipes => dispatch(fetchAllRecipes(recipes)))
)