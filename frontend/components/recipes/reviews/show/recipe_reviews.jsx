import React from 'react';
import { openModal } from '../../../../actions/modal_actions';
import { connect } from 'react-redux';
import { deleteReview } from '../../../../actions/review_actions';

const mapStateToProps = state => ({
  reviews: Object.values(state.entities.reviews),
  currentUser: state.session.id
})

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal)),
  deleteReview: reviewId => dispatch(deleteReview(reviewId))
})

function RecipeReviews(props) {
  let reviewPosted = false;

  for(let i = 0; i < props.reviews.length; i++){
    if (props.reviews[i].reviewerId === props.currentUser) {
      reviewPosted = true;
    }
  }

  return (
    <div id="recipe-reviews">
      <h1 className="instruction-header">Reviews</h1>
      {!reviewPosted ?
        <button 
          onClick={props.currentUser ? 
            () => props.openModal('createReview') 
            : () => props.openModal('login')
          }>
          Leave a Review
        </button> 
      : ''}

      {props.reviews.map((review, i) => (
        <div className="user-review" key={i}>
          <p>{review.body}</p>
          <p>{review.user}</p>
          {props.currentUser === review.reviewerId ? 
            <div>
              <button onClick={() => props.openModal('editReview')}>
                Edit Review
              </button> 
              <button onClick={() => props.deleteReview(review.id)}>
                Delete Review
              </button>
            </div>
            : ''}
        </div>
      ))}
    </div>
  )
}

export default connect(mapStateToProps, mapDispatchToProps)(RecipeReviews);