import { FETCH_USER } from "../actions/user_actions";
import { FETCH_RECIPE } from "../actions/recipe_actions";

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
      return action.recipe;
    default:
      return oldState;
  }
}

export default RecipesReducer;