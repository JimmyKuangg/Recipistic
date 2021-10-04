import { FETCH_USER } from "../actions/user_actions";
import { CLEAR_RECIPE, FETCH_RECIPE } from "../actions/recipe_actions";

const RecipesReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch(action.type) {
    case FETCH_USER:
      if (action.user.recipes){
        return action.user.recipes;
      } else {
        return {};
      }
    case FETCH_RECIPE:
      return {
        id: action.recipe.id, 
        title: action.recipe.title, 
        body: action.recipe.body,
        servings: action.recipe.servings
      };
    case CLEAR_RECIPE:
      return {};
    default:
      return oldState;
  }
}

export default RecipesReducer;