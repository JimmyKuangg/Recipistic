import { connect } from "react-redux";
import { signup, clearSessionErrors } from "../../actions/session_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import SignupForm from "./signup_form";

const mapStateToprops = state => ({
  errors: state.errors,
})

const mapDispatchToProps = dispatch => ({
  signup: user => dispatch(signup(user)),
  clearErrors: () => dispatch(clearSessionErrors()),
  openOther: () => dispatch(openModal('login')),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToprops, mapDispatchToProps)(SignupForm);