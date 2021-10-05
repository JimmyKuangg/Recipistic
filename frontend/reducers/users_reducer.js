import { FETCH_RECIPE } from "../actions/recipe_actions";
import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { FETCH_USER } from "../actions/user_actions";
const UsersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  
  switch(action.type){
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, oldState, { [action.user.id]: action.user });
    case FETCH_USER:
      return Object.assign({}, oldState, { [action.user.id]: action.user });
    default:
      return oldState;
  }
}

export default UsersReducer;