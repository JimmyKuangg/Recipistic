import React from 'react'
import NavbarContainer from './components/navbar/navbar_container';
import Modal from './components/ui/modal';
import { Route, Switch, Redirect } from 'react-router';
import RoutingError from './components/errors/routing_error';
import Home from './components/pages/home';
import Sidemenu from './components/ui/sidemenu';


const App = () => (
  <div>
    <Modal />
    <Sidemenu />
    <NavbarContainer />
    <Switch>
      <Route exact path='/' component={Home} />
      <Route component={RoutingError} />
    </Switch>
  </div>
)

export default App;