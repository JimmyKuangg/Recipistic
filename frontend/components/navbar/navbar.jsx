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
          <button><span className="material-icons">menu</span></button>
          <button onClick={this.openFavorites}><span className="material-icons">favorite</span></button>
          <button onClick={() => this.props.openModal('signup')}>Sign Up</button>
          <button onClick={() => this.props.openModal('login')}>Login</button>
        </div>
      )
    } else {
      return(
        <div className="session-buttons">
          <button><span className="material-icons">menu</span></button>
          <button><span className="material-icons">favorite</span></button>
          <button onClick={this.props.logout}>Logout</button>
        </div>
      )
    }
  }

  fetchHyperlinks(){
    return(
    <div>
      <button id="github-link"><a href="https://github.com/JimmyKuangg">Github</a></button>
      <button><a href="https://www.linkedin.com/in/jimmy-kuang-789967183/">Linkedin</a></button>
    </div>
    )
  }

  render() {
    return (
      <div id="navbar">
        <ul>
          <li>{this.fetchButtons()}</li>
          <li><button onClick={() => this.props.history.push('/')}><h1>Recipistic</h1></button></li>
          <li>{this.fetchHyperlinks()}</li>
        </ul>
      </div>
    )
  }
}
