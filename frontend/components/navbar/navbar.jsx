import React from 'react'
import { Link } from 'react-router-dom';
import Modal from '../modal/modal';

export default class Navbar extends React.Component {
  constructor(props){
    super(props);

    this.state = {
      formType: '',
      showModal: false
    }
    
    this.fetchSignUp = this.fetchSignUp.bind(this);
    this.fetchLogin = this.fetchLogin.bind(this);
  }

  fetchSignUp() {
    this.setState({formType: 'signup', showModal: true});
  }

  fetchLogin() {
    this.setState({formType: 'login', showModal: true});
  }

  fetchButtons(){
    if (!this.props.currentUser){
      return (
        <div>
          <button onClick={this.fetchSignUp}>Sign Up</button>
          <button onClick={this.fetchLogin}>Login</button>
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
      <div>
        {this.fetchButtons()}
        {this.state.showModal ? <Modal formType={this.props.formType} /> : ''}
      </div>
    )
  }
}
