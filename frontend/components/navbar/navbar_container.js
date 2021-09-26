import { login, logout, signup } from "../../actions/session_actions";
import { connect } from "react-redux";

const mapStateToProps = state => ({
  currentUser = state.currentUser,
})

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user)),
  logout: () => dispatch(logout(user)),
  signup: user => dispatch(signup(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);