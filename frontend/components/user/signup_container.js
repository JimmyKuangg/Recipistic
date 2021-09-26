import { connect } from "react-redux";
import { signup } from "../../actions/session_actions";
import SignupForm from "./signup_form";

const mapStateToprops = state => ({
  errors: state.errors,
})

const mapDispatchToProps = dispatch => ({
  signup: user => dispatch(signup(user))
})

export default connect(mapStateToprops, mapDispatchToProps)(SignupForm);