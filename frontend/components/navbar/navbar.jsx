import React from 'react';

export default class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.openFavorites = this.openFavorites.bind(this);
  }

  openFavorites() {
    if (!this.props.currentUser) {
      this.props.openModal('login');
    } else {
      this.props.history.push('/favorites');
    }
  }

  fetchButtons() {
    if (!this.props.currentUser) {
      return (
        <div className="session-buttons">
          <button onClick={this.props.openSidemenu}>
            <span className="material-icons">menu</span>
          </button>
          <button onClick={this.openFavorites}>
            <div className="favorite-button">
              <span className="material-icons">favorite</span>
              Favorites
            </div>
          </button>
          <button onClick={() => this.props.openModal('signup')}>
            Sign Up
          </button>
          <button onClick={() => this.props.openModal('login')}>Login</button>
        </div>
      );
    } else {
      return (
        <div className="session-buttons">
          <button onClick={this.props.openSidemenu}>
            <span className="material-icons">menu</span>
          </button>
          <button onClick={this.openFavorites}>
            <div className="favorite-button">
              <span className="material-icons">favorite</span>
              Favorites
            </div>
          </button>
        </div>
      );
    }
  }

  rightNav() {
    return (
      <div id="right-nav">
        <a
          className="info-link"
          target="_blank"
          rel="noopener noreferrer"
          href="https://github.com/JimmyKuangg/Recipistic"
        >
          <i className="fab fa-github" />
        </a>
        <a
          className="info-link"
          target="_blank"
          rel="noopener noreferrer"
          href="https://www.linkedin.com/in/jimmy-kuang-789967183/"
        >
          <i className="fab fa-linkedin" />
        </a>
        {this.props.location.pathname !== '/recipes' ? (
          <button
            id="nav-search"
            onClick={() => this.props.openModal('search')}
          >
            <i className="fas fa-search"></i>
          </button>
        ) : (
          ''
        )}
      </div>
    );
  }

  render() {
    return (
      <div id="navbar">
        <ul>
          <li>{this.fetchButtons()}</li>
          <li>
            <button
              id="logo-button"
              onClick={() => this.props.history.push('/')}
            >
              <h1 id="logo">Recipistic</h1>
            </button>
          </li>
          <li>{this.rightNav()}</li>
        </ul>
      </div>
    );
  }
}
