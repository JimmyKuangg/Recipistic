import { combineReducers } from "redux";
import SessionErrorsReducer from "./session_errors_reducer";

const ErrorsReducer = combineReducers({
  login: SessionErrorsReducer,
})

export default ErrorsReducer;
