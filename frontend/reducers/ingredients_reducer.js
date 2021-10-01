import { FETCH_RECIPE } from "../actions/recipe_actions";

const IngredientsReducer = (oldState = {}, action) => {

  switch(action.type) {
    case FETCH_RECIPE:
      return action.recipe.ingredients
    default:
      return oldState;
  }
}

export default IngredientsReducer;