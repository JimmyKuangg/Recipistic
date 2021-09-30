import { combineReducers } from "redux";
import UsersReducer from './users_reducer';
import FavoritesReducer from "./favorites_reducer";
import RecipesReducer from "./recipes_reducer";

const EntitiesReducer = combineReducers({
  users: UsersReducer,
  favorites: FavoritesReducer,
  recipes: RecipesReducer
})

export default EntitiesReducer;