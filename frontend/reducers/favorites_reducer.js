import { FETCH_FAVORITES, CLEAR_FAVORITES, FETCH_FAVORITE, REMOVE_FAVORITE } from "../actions/favorite_actions";
import { FETCH_RECIPE } from "../actions/recipe_actions";

const FavoritesReducer = (oldState = {}, action) => {
  let newState = Object.assign({}, oldState);
  
  switch(action.type) {
    case FETCH_FAVORITES:
      return action.favorites;
    case FETCH_FAVORITE:
      newState[action.favorite.id] = action.favorite;
      return newState;
    case FETCH_RECIPE:
      return action.recipe.userFavorites;
    case REMOVE_FAVORITE:
      delete newState[action.favoriteId];
      return newState;
    case CLEAR_FAVORITES:
      return {};
    default:
      return oldState;
  }
}

export default FavoritesReducer;