import { FETCH_USER } from "../actions/user_actions";
import { CLEAR_RECIPE, FETCH_RECIPE } from "../actions/recipe_actions";
import { FETCH_REVIEW, REMOVE_REVIEW } from "../actions/review_actions";

const RecipesReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let newState = Object.assign({}, oldState);
  switch(action.type) {
    case FETCH_USER:
      if (action.user.recipes){
        return action.user.recipes;
      } else {
        return {};
      }
    case FETCH_RECIPE:
      return action.recipe;
    case FETCH_REVIEW:
      newState['average'] = action.review.average;
      return newState;
    case CLEAR_RECIPE:
      return {};
    default:
      return oldState;
  }
}

export default RecipesReducer;