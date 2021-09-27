import React from 'react';
import LoginFormContainer from '../session/login_container';
import SignupFormContainer from '../user/signup_container';

export default class Modal extends React.Component {
  
  constructor(props) {
    super(props);

    this.fetchForm = this.fetchForm.bind(this);
  }

  fetchForm() {
    if (this.props.formType === 'signup'){
      return <SignupFormContainer closeModal={this.props.closeModal} fetchLogin={this.props.fetchLogin}/>
    } else if (this.props.formType === 'login'){
      return <LoginFormContainer closeModal={this.props.closeModal} fetchSignup={this.props.fetchSignup}/>
    }
  }

  render() {
    return (
      <div className="modal">
        <div className="modal-form">
          {this.fetchForm()}
          <button id="close-modal" onClick={this.props.closeModal}>X</button>
        </div>
      </div>
    )
  }
}