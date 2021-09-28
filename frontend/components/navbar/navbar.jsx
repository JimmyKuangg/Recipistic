import React from 'react';

export default class Navbar extends React.Component {
  constructor(props){
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

  fetchButtons(){
    if (!this.props.currentUser){
      return (
        <div className="session-buttons">
          <button onClick={this.props.openSidemenu}><span className="material-icons">menu</span></button>
          <button onClick={this.openFavorites}><span className="material-icons">favorite</span></button>
          <button onClick={() => this.props.openModal('signup')}>Sign Up</button>
          <button onClick={() => this.props.openModal('login')}>Login</button>
        </div>
      )
    } else {
      return(
        <div className="session-buttons">
          <button onClick={this.props.openSidemenu}><span className="material-icons">menu</span></button>
          <button onClick={this.openFavorites}><span className="material-icons">favorite</span></button>
        </div>
      )
    }
  }

  fetchHyperlinks(){
    return(
    <div id="my-info">
      <a href="https://github.com/JimmyKuangg/Recipistic">
        <i className="fab fa-github" />
      </a>
      <a href="https://www.linkedin.com/in/jimmy-kuang-789967183/">
        <i className="fab fa-linkedin"/>
      </a>
    </div>
    )
  }

  render() {
    return (
      <div id="navbar">
        <ul>
          <li>
            {this.fetchButtons()}
          </li>
          <li>
            <button id="logo-button" onClick={() => this.props.history.push('/')}>
              <h1 id="logo">Recipistic</h1>
            </button>
          </li>
          <li>
            {this.fetchHyperlinks()}
          </li>
        </ul>
      </div>
    )
  }
}
