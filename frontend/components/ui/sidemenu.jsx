import React from 'react';
import { connect } from 'react-redux';
import { closeSidemenu } from '../../actions/sidemenu_actions';
import { logout } from '../../actions/session_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = state => ({
  sidemenu: state.ui.sidemenu,
  loggedIn: Boolean(state.session.id),
  currentUserId: state.session.id
})

const mapDispatchToProps = dispatch => ({
  closeSidemenu: () => dispatch(closeSidemenu()),
  logout: () => dispatch(logout()),
})

function Sidemenu({sidemenu, loggedIn, currentUserId, logout, closeSidemenu}) {
  if (!sidemenu) {
    return null;
  }

  return(
    <div id="sidemenu">
      <button id="close-sidemenu" onClick={closeSidemenu}>X</button>
      <span><i className="fas fa-utensils"></i></span>
      <ul id="sidemenu-links">
        {loggedIn ? 
          <li>
            <Link 
              className="linkto" 
              to={`/users/${currentUserId}`} 
              onClick={closeSidemenu}
            >YOUR PROFILE
            </Link>
          </li>
          : ''}
        {loggedIn ? 
          <li>
            <button 
              className="logout" 
              onClick={() => logout().then(() => closeSidemenu())}
            >LOG OUT
            </button>
          </li> 
          : ''}
      </ul>
    </div>
  )
}


export default connect(mapStateToProps, mapDispatchToProps)(Sidemenu);