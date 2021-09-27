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
      return <LoginFormContainer />
    } else {
      return <SignupFormContainer />
    }
  }

  render() {
    return (
      <div className="modal" onClick={this.clickedOut}>
        <div className="modal-form">
          {this.fetchForm()}
        </div>
      </div>
    )
  }
}