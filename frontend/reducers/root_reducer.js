import { combineReducers } from "redux";
import SessionReducer from "./session_reducer";
import EventsReducer from "./events_reducer";

export default combineReducers({
  session: SessionReducer,
  events: EventsReducer
})
