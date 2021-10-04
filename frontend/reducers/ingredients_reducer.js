import { FETCH_RECIPE, CLEAR_RECIPE } from "../actions/recipe_actions";

const IngredientsReducer = (oldState = {}, action) => {

  switch(action.type) {
    case FETCH_RECIPE:
      return action.recipe.ingredients
    case CLEAR_RECIPE:
      return {};
    default:
      return oldState;
  }
}

export default IngredientsReducer;