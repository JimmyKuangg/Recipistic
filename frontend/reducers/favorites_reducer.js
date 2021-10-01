import { FETCH_FAVORITES } from "../actions/favorite_actions";

const FavoritesReducer = (oldState = {}, action) => {
  
  switch(action.type) {
    case FETCH_FAVORITES:
      return action.favorites;
    default:
      return oldState;
  }
}

export default FavoritesReducer;