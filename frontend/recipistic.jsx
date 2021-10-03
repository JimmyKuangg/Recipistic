import React from 'react'
import ReactDOM from 'react-dom'
import Root from './root';
import configureStore from './store/store';
import { login } from './actions/session_actions'

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let store;

  if (window.currentUser){
    let preloadedState = {
      entities:{
        users: { [window.currentUser.id]: window.currentUser }
      }, 
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  //Testing
  window.getState = store.getState;
    
  ReactDOM.render( 
      <Root store={store}/>
  , root)
})