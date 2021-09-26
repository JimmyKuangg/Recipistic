import React from 'react'
import { Link } from 'react-router-dom';

export default class Navbar extends React.Component {
  constructor(props){
    super(props);
  }

  fetchButtons(){
    if (!this.props.currentUser){
      return (
        <div>
        <Link to="/signup">Sign up</Link>
        <Link to="/login">Login</Link>
        </div>
      )
    } else {
      return <button onClick={this.props.logout}>Logout</button>
    }
  }

  render() {
    return (
      <div>
        {this.fetchButtons()}
      </div>
    )
  }
}
