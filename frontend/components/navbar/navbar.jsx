import React from 'react';

export default class Navbar extends React.Component {
  constructor(props){
    super(props);
  }

  fetchButtons(){
    if (!this.props.currentUser){
      return (
        <div className="session-buttons">
          <button onClick={() => this.props.openModal('signup')}>Sign Up</button>
          <button onClick={() => this.props.openModal('login')}>Login</button>
        </div>
      )
    } else {
      return(
        <button onClick={this.props.logout}>Logout</button>
      )
    }
  }

  render() {
    return (
      <div id="navbar">
        <ul>
          <li>{this.fetchButtons()}</li>
          <li><h1>Recipistic</h1></li>
          <li><h1>Hyperlinks</h1></li>
        </ul>
      </div>
    )
  }
}
