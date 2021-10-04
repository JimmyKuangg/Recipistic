import { CLEAR_RECIPE, FETCH_RECIPE } from '../actions/recipe_actions';

const StepsReducer = (oldState = {}, action) => {
  switch(action.type) {
    case FETCH_RECIPE:
      return action.recipe.steps;
    case CLEAR_RECIPE:
      return {};
    default:
      return oldState;
  }
}

export default StepsReducer;