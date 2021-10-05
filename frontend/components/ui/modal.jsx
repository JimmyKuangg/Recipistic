import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session/login_container';
import SignupFormContainer from '../user/signup/signup_container';
import EditReviewFormContainer from '../recipes/reviews/edit/edit_review_form_container';

const mapStateToProps = state => ({
  modal: state.ui.modal
})

const mapDispatchToProps = dispatch => ({
  closeModal: () => dispatch(closeModal())
})

function Modal({modal, closeModal}) {
  if (!modal) {
    return null;
  }

  let component;

  switch (modal) {
    case 'login': 
      component = <LoginFormContainer />
      break;
    case 'signup':
      component = <SignupFormContainer />
      break;
    case 'editReview':
      component = <EditReviewFormContainer />
      break;
    default: 
      return null;
  }

  return (
    <div className="modal" onClick={closeModal}>
      <div className="modal-form" onClick={e => e.stopPropagation()}>
        { component }
      </div>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(Modal);