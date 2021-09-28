import React from 'react';
import { connect } from 'react-redux';
import { closeSidemenu } from '../../actions/sidemenu_actions';
import { logout } from '../../actions/session_actions';

const mapStateToProps = state => ({
  sidemenu: state.ui.sidemenu,
  loggedIn: Boolean(state.session.id)
})

const mapDispatchToProps = dispatch => ({
  closeSidemenu: () => dispatch(closeSidemenu()),
  logout: () => dispatch(logout()),
})

function Sidemenu({sidemenu, loggedIn, logout, closeSidemenu}) {
  if (!sidemenu) {
    return null;
  }

  return(
    <div id="sidemenu">
      <button id="close-sidemenu" onClick={closeSidemenu}>X</button>
      <span><i className="fas fa-utensils"></i></span>
      <ul id="sidemenu-links">
        {loggedIn ? <li><button id="logout" onClick={() => logout().then(() => closeSidemenu())}>LOG OUT</button></li> : ''}
      </ul>
    </div>
  )
}


export default connect(mapStateToProps, mapDispatchToProps)(Sidemenu);