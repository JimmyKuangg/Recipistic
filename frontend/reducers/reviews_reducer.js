import { FETCH_RECIPE, CLEAR_RECIPE } from "../actions/recipe_actions";
import { FETCH_REVIEW, REMOVE_REVIEW } from "../actions/review_actions";

const ReviewsReducer = (oldState = {}, action) => {
  let newState = Object.assign({}, oldState);

  switch(action.type) {
    case FETCH_RECIPE:
      if (action.recipe.reviews)
        return action.recipe.reviews;
      else 
        return {};
    case FETCH_REVIEW:
      newState[action.review.id] = {
        id: action.review.id,
        body: action.review.body,
        reviewerId: action.review.reviewerId,
        rating: action.review.rating,
        user: action.review.user
      };
      return newState;
    case REMOVE_REVIEW:
      delete newState[action.reviewId];
      return newState;
    case CLEAR_RECIPE:
      return {};
    default: 
      return oldState;
  }
}

export default ReviewsReducer;