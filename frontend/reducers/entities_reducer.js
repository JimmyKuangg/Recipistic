import { combineReducers } from "redux";
import UsersReducer from './users_reducer';
import FavoritesReducer from "./favorites_reducer";
import RecipesReducer from "./recipes_reducer";
import IngredientsReducer from "./ingredients_reducer";
import StepsReducer from "./steps_reducer"
import ReviewsReducer from "./reviews_reducer";

const EntitiesReducer = combineReducers({
  users: UsersReducer,
  favorites: FavoritesReducer,
  recipes: RecipesReducer,
  ingredients: IngredientsReducer,
  steps: StepsReducer,
  reviews: ReviewsReducer
})

export default EntitiesReducer;