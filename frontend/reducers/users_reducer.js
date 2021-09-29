import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { FETCH_USER } from "../actions/user_actions";
const UsersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let newState = Object.assign({}, oldState);
  
  switch(action.type){
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, oldState, { [action.user.id]: action.user });
    case FETCH_USER:
      newState[action.user.id] = action.user;
      return newState;
    default:
      return oldState;
  }
}

export default UsersReducer;