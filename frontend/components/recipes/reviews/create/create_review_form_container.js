import { connect } from 'react-redux';
import { closeModal } from '../../../../actions/modal_actions';
import { newReview } from '../../../../actions/review_actions';
import CreateReviewForm from './create_review_form';

const mapStateToprops = (state) => ({
  errors: state.errors,
  review: {
    body: '',
    rating: 0,
    user_id: state.session.id,
    recipe_id: state.entities.recipes.id,
  },
});

const mapDispatchToProps = (dispatch) => ({
  newReview: (review) => dispatch(newReview(review)),
  closeModal: () => dispatch(closeModal()),
});

export default connect(mapStateToprops, mapDispatchToProps)(CreateReviewForm);
