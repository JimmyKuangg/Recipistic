import { login, logout, signup } from "../../actions/session_actions";
import { connect } from "react-redux";
import Navbar from "./navbar";

const mapStateToProps = state => ({
  currentUser: state.session.id
})

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user)),
  logout: () => dispatch(logout()),
  signup: user => dispatch(signup(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);