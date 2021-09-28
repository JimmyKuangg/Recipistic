import { combineReducers } from "redux";
import Modalreducer from "./modal_reducer";
import SidemenuReducer from "./sidemenu_reducer";

const UiReducer = combineReducers({
  modal: Modalreducer,
  sidemenu: SidemenuReducer,
})

export default UiReducer;