import { connect } from "react-redux";
import { closeModal} from "../../../../actions/modal_actions";
import { updateReview } from "../../../../actions/review_actions";
import { clearSessionErrors } from "../../../../actions/session_actions";
import EditReviewForm from "./edit_review_form";

const mapStateToprops = state => {
  return ({
    errors: state.errors,
    review: state.entities.reviews[state.session.id]
  })
}

const mapDispatchToProps = dispatch => ({
  clearErrors: () => dispatch(clearSessionErrors()),
  closeModal: () => dispatch(closeModal()),
  updateReview: review => dispatch(updateReview(review))
})

export default connect(mapStateToprops, mapDispatchToProps)(EditReviewForm);