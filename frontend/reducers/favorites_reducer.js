import { FETCH_FAVORITES, CLEAR_FAVORITES } from "../actions/favorite_actions";

const FavoritesReducer = (oldState = {}, action) => {
  
  switch(action.type) {
    case FETCH_FAVORITES:
      return action.favorites;
    case CLEAR_FAVORITES:
      return {};
    default:
      return oldState;
  }
}

export default FavoritesReducer;