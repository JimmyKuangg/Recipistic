import { logout } from "../../actions/session_actions";
import { openModal } from "../../actions/modal_actions";
import { connect } from "react-redux";
import Navbar from "./navbar";
import { withRouter } from "react-router";

const mapStateToProps = state => ({
  currentUser: state.session.id,
})

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal)),
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Navbar));