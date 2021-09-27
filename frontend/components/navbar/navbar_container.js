import { login, logout, signup } from "../../actions/session_actions";
import { connect } from "react-redux";
import Navbar from "./navbar";

const mapStateToProps = state => ({
  currentUser: state.session.id
})

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);