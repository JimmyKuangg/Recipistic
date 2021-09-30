import { FETCH_ALL_RECIPES, FETCH_RECIPES } from "../actions/recipe_actions";

const RecipesReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch(action.type) {
    case FETCH_RECIPES:
      return action.recipes;
    case FETCH_ALL_RECIPES:
      return Object.assign({}, oldState, action.recipes);
    default:
      return oldState;
  }
}

export default RecipesReducer;