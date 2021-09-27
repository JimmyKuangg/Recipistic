import React from 'react';
import Modal from '../modal/modal';

export default class Navbar extends React.Component {
  constructor(props){
    super(props);

    this.state = {
      formType: '',
      showModal: false
    }
    
    this.fetchSignup = this.fetchSignup.bind(this);
    this.fetchLogin = this.fetchLogin.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  fetchSignup() {
    this.setState({formType: 'signup', showModal: true});
  }

  fetchLogin() {
    this.setState({formType: 'login', showModal: true});
  }

  closeModal() {
    this.setState({formType: '', showModal: false});
  }

  fetchButtons(){
    if (!this.props.currentUser){
      return (
        <div className="session-buttons">
          <button onClick={this.fetchSignup}>Sign Up</button>
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
        {this.state.showModal ? 
        <Modal 
          formType={this.state.formType} 
          closeModal={this.closeModal}
          fetchSignup={this.fetchSignup}
          fetchLogin={this.fetchLogin}
        /> 
        : ''}
      </div>
    )
  }
}
