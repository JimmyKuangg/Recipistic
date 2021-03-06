export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const CLEAR_SESSION_ERRORS = 'CLEAR_SESSION_ERRORS';
import * as SessionApiUtil from '../util/session_api_util';
import * as UserApiUtil from '../util/user_api_util';

const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user
})

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
})

const receiveSessionErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
})

export const clearSessionErrors = () => ({
  type: CLEAR_SESSION_ERRORS
})

export const login = user => dispatch => (
  SessionApiUtil.login(user)
  .then(user => dispatch(receiveCurrentUser(user)),
  error => dispatch(receiveSessionErrors(error)))
)

export const logout = () => dispatch => (
  SessionApiUtil.logout()
  .then(() => dispatch(logoutCurrentUser()))
)

export const signup = user => dispatch => (
  UserApiUtil.signup(user)
  .then(user => dispatch(receiveCurrentUser(user)),
  error => dispatch(receiveSessionErrors(error)))
)
