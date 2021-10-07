import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session/login_container';
import SignupFormContainer from '../user/signup/signup_container';
import EditReviewFormContainer from '../recipes/reviews/edit/edit_review_form_container';
import CreateReviewFormContainer from '../recipes/reviews/create/create_review_form_container';
import SearchModal from '../search/search_modal';

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
    case 'createReview':
      component = <CreateReviewFormContainer />
      break;
    case 'search':
      component = <SearchModal />
      break;
    default: 
      return null;
  }

  return (
    <div className="modal" id={`${modal}-modal`} onClick={closeModal}>
      <div className="modal-form" id={`${modal}-modal-form`}onClick={e => e.stopPropagation()}>
        { component }
      </div>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(Modal);