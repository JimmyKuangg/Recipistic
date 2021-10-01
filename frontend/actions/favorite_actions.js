export const FETCH_FAVORITES = "FETCH_FAVORITES";
import { getFavorites } from "../util/user_api_util";

const fetchFavorites = favorites => ({
  type: FETCH_FAVORITES,
  favorites
})

export const receiveFavorites = userId => dispatch => (
  getFavorites(userId)
  .then(favorites => dispatch(fetchFavorites(favorites)))
)

