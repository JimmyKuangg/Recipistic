import React from 'react'
import NavbarContainer from './components/navbar/navbar_container';
import { Route } from 'react-router';
import { AuthRoute } from './util/route_util';
import Modal from './components/modal/modal';

const App = () => (
  <div>
    <Modal />
    <header>
      <NavbarContainer />
    </header>

    <div className="splash"/>
  </div>
)

export default App;