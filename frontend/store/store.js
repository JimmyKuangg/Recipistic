import RootReducer from "../reducers/root_reducer";
import thunk from 'redux-thunk';
import logger from 'redux-logger';
import { createStore, applyMiddleware } from "redux";

const configureStore = (preloadedState = {}) => (
  createStore(RootReducer, preloadedState, applyMiddleware(thunk, logger))
)

export default configureStore;