import { FETCH_FAVORITES, CLEAR_FAVORITES } from "../actions/favorite_actions";

const FavoritesReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  
  switch(action.type) {
    case FETCH_FAVORITES:
      return Object.assign({}, oldState, action.favorites);
    case CLEAR_FAVORITES:
      return {};
    default:
      return oldState;
  }
}

export default FavoritesReducer;