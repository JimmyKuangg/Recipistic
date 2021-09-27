import { connect } from "react-redux";
import { signup, clearSessionErrors } from "../../actions/session_actions";
import SignupForm from "./signup_form";

const mapStateToprops = state => ({
  errors: state.errors,
})

const mapDispatchToProps = dispatch => ({
  signup: user => dispatch(signup(user)),
  clearErrors: () => dispatch(clearSessionErrors())
})

export default connect(mapStateToprops, mapDispatchToProps)(SignupForm);