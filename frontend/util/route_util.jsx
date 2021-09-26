import React from 'react'
import { Redirect, withRouter, Route } from "react-router";
import { connect } from "react-redux";

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.id),
})

const Auth = ({component: Component, path, loggedIn, exact }) => (
  <Route 
    path={path}
    exact={exact}
    render={props => !loggedIn ? <Component {...props} /> : <Redirect to="/" />}
  />
)

export const AuthRoute = withRouter(connect(mapStateToProps, null)(Auth));