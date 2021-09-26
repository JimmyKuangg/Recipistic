import React from 'react'
import Navbar from './components/navbar/navbar';
import { Route } from 'react-router';
import { AuthRoute } from './util/route_util';
import LoginFormContainer from './components/session/login_container';
import SignupFormContainer from './components/user/signup_container';

const App = () => (
  <div>
    <header>
      <h1>Recipistic</h1>
      <Navbar />
    </header>

    <AuthRoute path="/login" component={LoginFormContainer} />
    <AuthRoute path="/signup" component={SignupFormContainer} />
  </div>
)

export default App;