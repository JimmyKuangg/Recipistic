import React from 'react';
import { openModal } from '../../../../actions/modal_actions';
import { connect } from 'react-redux';
import { deleteReview } from '../../../../actions/review_actions';
import { deleteFavorite, markFavorite } from '../../../../actions/favorite_actions';

const mapStateToProps = state => ({
  favorites: Object.values(state.entities.favorites),
  currentRecipe: state.entities.recipes.id,
  sideMenu: state.ui.sidemenu,
})

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal)),
  deleteReview: reviewId => dispatch(deleteReview(reviewId)),
  markFavorite: favorite => dispatch(markFavorite(favorite)),
  deleteFavorite: favoriteId => dispatch(deleteFavorite(favoriteId)),
})

function RecipeReviews(props) {
  let reviewPosted = false;
  let recipeFavorited = false;
  let favoriteId;

  for(let i = 0; i < props.reviews.length; i++){
    if (props.reviews[i].reviewerId === props.currentUser) {
      reviewPosted = true;
    }
  }

  for(let i = 0; i < props.favorites.length; i++){
    if (props.favorites[i].recipeId === props.currentRecipe) {
      recipeFavorited = true;
      favoriteId = props.favorites[i].id;
    }
  }

  console.log(props);
  
  return (
    <div id="recipe-reviews">
      <h1 className="instruction-header">Reviews</h1>

      {!props.sideMenu ? 
        <div className="review-favorite-buttons">
          {!reviewPosted ?
            <button 
              className="review-button"
              onClick={props.currentUser ? 
                () => props.openModal('createReview') 
                : () => props.openModal('login')
              }>
              <i className="far fa-comment-alt"></i>
            </button> 
          : ''}
          
          <button 
            className="review-button"
            onClick={!recipeFavorited ?
              () => props.markFavorite({user_id: `${props.currentUser}`, recipe_id: `${props.currentRecipe}`})
              : () => props.deleteFavorite(favoriteId)
            }> 
            {recipeFavorited ? <i id="filled-heart" className="fas fa-heart"></i> : <i className="far fa-heart"></i>} 
          </button>
        </div>
      : ''}

      {props.reviews.length === 0 ? <h1>No reviews yet :( </h1> : ''}

      {props.reviews.map((review, i) => (
        <div className="user-review" key={i}>
          <p>{review.body}</p>
          <p>{review.user}</p>
          {props.currentUser === review.reviewerId ? 
            <div>
              <button onClick={() => props.openModal('editReview')}>
                Edit Review
              </button> 
              <button onClick={() => props.deleteReview(review.id).then(() => window.location.reload(true))}>
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