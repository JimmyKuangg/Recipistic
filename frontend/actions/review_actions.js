export const FETCH_REVIEW = 'FETCH_REVIEW';
import { editReview } from "../util/recipe_api_util";

const fetchReview = review => ({
  type: FETCH_REVIEW,
  review
})

export const updateReview = review => dispatch => (
  editReview(review)
  .then(review => dispatch(fetchReview(review)))
)