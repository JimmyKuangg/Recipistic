import React from 'react';
import { Link } from 'react-router-dom';

export default class Sidemenu extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location !== this.props.location) {
      this.props.closeSidemenu();
    }
  }

  render() {
    return (
      <div id="sidemenu" className={this.props.sidemenu ? 'open' : 'closed'}>
        <button id="close-sidemenu" onClick={this.props.closeSidemenu}>
          X
        </button>
        <span>
          <i className="fas fa-utensils"></i>
        </span>
        <ul id="sidemenu-links">
          <li>
            <Link
              className="linkto"
              to={`/recipes`}
              onClick={this.props.closeSidemenu}
            >
              ALL RECIPES
            </Link>
          </li>
          {this.props.loggedIn ? (
            <li>
              <Link
                className="linkto"
                to={`/users/${this.props.currentUserId}`}
                onClick={this.props.closeSidemenu}
              >
                YOUR PROFILE
              </Link>
            </li>
          ) : (
            ''
          )}
          {this.props.loggedIn ? (
            <li>
              <button
                className="logout"
                onClick={() =>
                  this.props.logout().then(() => this.props.closeSidemenu())
                }
              >
                LOG OUT
              </button>
            </li>
          ) : (
            ''
          )}
        </ul>
      </div>
    );
  }
}
