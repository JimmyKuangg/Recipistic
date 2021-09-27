import React from 'react'
import NavbarContainer from './components/navbar/navbar_container';
import { Route } from 'react-router';
import { AuthRoute } from './util/route_util';

const App = () => (
  <div>
    <header id="navbar">
      <ul>
        <li><NavbarContainer /></li>
        <li><h1>Recipistic</h1></li>
        <li><h1>Hyperlinks</h1></li>
      </ul>
    </header>
    <div className="splash"/>

    {/* <AuthRoute path="/login" component={Modal} />
    <AuthRoute path="/signup" component={Modal} /> */}
  </div>
)

export default App;