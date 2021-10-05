import React from 'react';
import { openModal } from '../../../../actions/modal_actions';
import { connect } from 'react-redux';

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal))
})

function RecipeReviews(props) {
  return (
    <div id="recipe-reviews">
      <h1 className="instruction-header">Reviews</h1>
      {props.reviews.map((review, i) => (
        <div className="user-review" key={i}>
          <p>{review.body}</p>
          <p>{review.user}</p>
          {props.currentUser === review.reviewerId ? 
            <button onClick={() => props.openModal('editReview')}>
              Edit Review
            </button> 
            : ''}
        </div>
      ))}
    </div>
  )
}

export default connect(null, mapDispatchToProps)(RecipeReviews);