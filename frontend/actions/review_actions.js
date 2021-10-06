export const FETCH_REVIEW = 'FETCH_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
import * as ReviewApiUtil from "../util/review_api_util";

const fetchReview = review => ({
  type: FETCH_REVIEW,
  review
})

const removeReview = reviewId => ({
  type: REMOVE_REVIEW,
  reviewId
})

export const updateReview = review => dispatch => (
  ReviewApiUtil.editReview(review)
  .then(review => dispatch(fetchReview(review)))
)

export const newReview = review => dispatch => (
  ReviewApiUtil.createReview(review)
  .then(review => dispatch(fetchReview(review)))
)
export const deleteReview = reviewId => dispatch => (
  ReviewApiUtil.expungeReview(reviewId)
  .then(() => dispatch(removeReview(reviewId)))
)