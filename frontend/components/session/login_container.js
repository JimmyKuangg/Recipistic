import { connect } from "react-redux";
import { login, clearSessionErrors } from "../../actions/session_actions";
import LoginForm from "./login_form";

const mapStateToprops = state => ({
  errors: state.errors,
})

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user)),
  clearErrors: () => dispatch(clearSessionErrors()),
})

export default connect(mapStateToprops, mapDispatchToProps)(LoginForm);