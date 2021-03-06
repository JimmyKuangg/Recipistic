import RootReducer from "../reducers/root_reducer";
import thunk from 'redux-thunk';
import { createStore, applyMiddleware } from "redux";

const middlewares = [thunk];

if (process.env.NODE_ENV !== "production") {
  // must use 'require' (import only allowed at top of file)
  const { logger } = require("redux-logger");
  middlewares.push(logger);
}

const configureStore = (preloadedState = {}) => (
  createStore(RootReducer, preloadedState, applyMiddleware(...middlewares))
)

export default configureStore;