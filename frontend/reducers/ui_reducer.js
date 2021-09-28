import { combineReducers } from "redux";
import Modalreducer from "./modal_reducer";

const UiReducer = combineReducers({
  modal: Modalreducer,
})

export default UiReducer;