import { openModal } from "../../actions/modal_actions";
import { openSidemenu } from "../../actions/sidemenu_actions";
import { connect } from "react-redux";
import Navbar from "./navbar";
import { withRouter } from "react-router";

const mapStateToProps = state => ({
  currentUser: state.session.id,
})

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal)),
  openSidemenu: () => dispatch(openSidemenu()),
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Navbar));