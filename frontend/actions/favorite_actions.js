export const FETCH_FAVORITES = "FETCH_FAVORITES";
export const FETCH_FAVORITE = 'FETCH_FAVORITE';
export const REMOVE_FAVORITE = 'REMOVE_FAVORITE';
export const CLEAR_FAVORITES = 'CLEAR_FAVORITES';
import { getFavorites, createFavorite, expungeFavorite } from "../util/user_api_util";

const fetchFavorites = favorites => ({
  type: FETCH_FAVORITES,
  favorites
})

const fetchFavorite = favorite => ({
  type: FETCH_FAVORITE,
  favorite
})

const removeFavorite = favoriteId => ({
  type: REMOVE_FAVORITE,
  favoriteId,
})

export const clearFavorites = () => ({
  type: CLEAR_FAVORITES,
})

export const receiveFavorites = userId => dispatch => (
  getFavorites(userId)
  .then(favorites => dispatch(fetchFavorites(favorites)))
)

export const markFavorite = favorite => dispatch => (
  createFavorite(favorite)
  .then(favorite => dispatch(fetchFavorite(favorite)))
)

export const deleteFavorite = favoriteId => dispatch => (
  expungeFavorite(favoriteId)
  .then(() => dispatch(removeFavorite(favoriteId)))
)