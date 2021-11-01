import { connect } from 'react-redux';
import { closeSidemenu } from '../../actions/sidemenu_actions';
import { logout } from '../../actions/session_actions';
import { withRouter } from 'react-router';
import Sidemenu from './sidemenu';

const mapStateToProps = (state) => ({
  sidemenu: state.ui.sidemenu,
  loggedIn: Boolean(state.session.id),
  currentUserId: state.session.id,
});

const mapDispatchToProps = (dispatch) => ({
  closeSidemenu: () => dispatch(closeSidemenu()),
  logout: () => dispatch(logout()),
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(Sidemenu)
);
