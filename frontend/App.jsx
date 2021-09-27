import React from 'react'
import NavbarContainer from './components/navbar/navbar_container';
import { Route } from 'react-router';
import { AuthRoute } from './util/route_util';
import Modal from './components/modal/modal';

const App = () => (
  <div>
    <header>
      <h1>Recipistic</h1>
      <NavbarContainer />
    </header>

    <AuthRoute path="/login" component={Modal} />
    <AuthRoute path="/signup" component={Modal} />
  </div>
)

export default App;