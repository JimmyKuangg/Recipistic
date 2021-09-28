import { combineReducers } from "redux";
import EntitiesReducer from "./entities_reducer";
import SessionErrorsReducer from "./session_errors_reducer";
import SessionReducer from "./session_reducer";
import UiReducer from "./ui_reducer";

const RootReducer = combineReducers({
  entities: EntitiesReducer,
  session: SessionReducer,
  errors: SessionErrorsReducer,
  ui: UiReducer,
})

export default RootReducer;