import React from 'react'
import NavbarContainer from './components/navbar/navbar_container';
import { Route, Switch, Redirect } from 'react-router';
import { ProtectedRoute } from './util/route_util';
import Modal from './components/ui/modal';
import RoutingError from './components/errors/routing_error';
import Home from './components/pages/home';
import Sidemenu from './components/ui/sidemenu';
import UserShowContainer from './components/user/show/user_show_container';
import UserFavoritesContainer from './components/user/favorites/user_favorites_container';
import RecipesShowContainer from './components/recipes/show/recipes_show_container';


const App = () => (
  <div>
    <Modal />
    <Sidemenu />
    <NavbarContainer />

    <Switch>
      <ProtectedRoute path="/favorites" component={UserFavoritesContainer} />
      <Route exact path="/recipes/:id" component={RecipesShowContainer} />
      <Route exact path="/users/:id" component={UserShowContainer} />
      <Route path='/' component={Home} />
      <Route component={RoutingError} />
    </Switch>

  </div>
)

export default App;